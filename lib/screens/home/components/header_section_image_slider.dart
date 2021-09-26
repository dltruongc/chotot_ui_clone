import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderImageSlider extends StatefulWidget {
  const HeaderImageSlider({
    Key key,
    @required this.assetImages,
  }) : super(key: key);

  final Iterable<int> assetImages;

  @override
  _HeaderImageSliderState createState() => _HeaderImageSliderState();
}

class _HeaderImageSliderState extends State<HeaderImageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: true,
              aspectRatio: 4,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          carouselController: _controller,
          items: widget.assetImages
              .map((e) => Builder(builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Image.asset(
                        'assets/images/slider/$e.jpg',
                        fit: BoxFit.contain,
                      ),
                    );
                  }))
              .toList(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.assetImages.map((e) {
              return GestureDetector(
                onTap: () {
                  print('HeaderImageSlider -> carousel clicked $e');
                  _controller.animateToPage(e);
                },
                child: Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == e ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
