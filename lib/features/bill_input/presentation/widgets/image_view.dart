import 'package:carousel_slider/carousel_slider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/common/constants.dart';
import '../../../../features/bill_input/presentation/widgets/util_btn.dart';

class ImageView extends StatefulWidget {

  final List<String> images;

  const ImageView({Key? key, required this.images}) : super(key: key);
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  late int _imgSelected = 0;
  late int _rotate = 0;

  late List<ImageItem> imageItems = widget.images.map((e) => ImageItem(url: e, rotate: 0)).toList();
  @override
  void dispose() {
    clearMemoryImageCache();
    clearGestureDetailsCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 20,
          child: ExtendedImageGesturePageView.builder(
            canScrollPage: (gestureDetails) => false,
            canMovePage: (gestureDetails) => false,
            itemBuilder: (BuildContext context, int index) {
              index = _imgSelected;
              var img = imageItems[index].url;
              Widget image = RepaintBoundary(
              child: RotatedBox(
                quarterTurns: imageItems[_imgSelected].rotate,
                child: ExtendedImage.network(
                  img,
                  imageCacheName: '$img',
                  initGestureConfigHandler: (state) {
                    return GestureConfig(
                      cacheGesture: true,
                    );
                  },
                  fit: BoxFit.contain,
                  mode: ExtendedImageMode.gesture,
                  enableMemoryCache: true,
                  enableLoadState: true,
                ),
              )
              );
              image = Container(
                child: image,
                padding: EdgeInsets.all(5.0),
              );
              return image;
            },
            itemCount: imageItems.length,
            controller: PageController(
              initialPage: _imgSelected,
              keepPage: true,
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
        Expanded(flex: 2 ,child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${_imgSelected + 1}/${imageItems.length}',style: kBlackBigText,),
        )),
        Expanded(flex: 2, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UtilButton(
              icon: Image.asset('assets/images/back_img.png', height: 22.5,),
              callback: (){
                setState(() {
                  setState(() {
                    _imgSelected = _imgSelected > 0 ? _imgSelected - 1 : _imgSelected;
                    _rotate = 0;
                  });
                });
              },
            ),
            UtilButton(
              icon: Image.asset('assets/images/left_rotate.png', height: 22.5,),
              callback: (){
                setState(() {
                    _rotate--;
                    imageItems[_imgSelected].rotate = _rotate;
                });
              },
            ),
            UtilButton(
              icon: Image.asset('assets/images/right_rotate.png', height: 22.5,),
              callback: (){
                setState(() {
                  _rotate ++;
                  imageItems[_imgSelected].rotate = _rotate;
                });
              },
            ),
            UtilButton(
              icon: Image.asset('assets/images/next_img.png', height: 22.5,),
              callback: (){
                setState(() {
                  _imgSelected = _imgSelected < imageItems.length - 1 ? _imgSelected + 1 : _imgSelected;
                  _rotate = 0;
                });
              },
            ),
          ],
        )),
      ],
    );
  }
}

class ImageItem {
  final String url;
  int rotate;

  ImageItem({required this.url, required this.rotate});
}
