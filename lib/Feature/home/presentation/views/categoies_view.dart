import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/data/model/category_model.dart';
import 'package:news_app/Feature/home/presentation/widgets/image_slider_card.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImageStateSlider();
  }
}

class _ImageStateSlider extends State<CategoriesView> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            height: MediaQuery.sizeOf(context).height * 0.2,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: CategoryModel.getListofCategories().map((category) {
            return Builder(
              builder: (BuildContext context) {
                return ImageSliderCard(categoryModel: category);
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              CategoryModel.getListofCategories().asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.grey.withOpacity(0.5)
                          : Colors.lightBlue)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
