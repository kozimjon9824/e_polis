import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../data/models/main/main.dart';

class CarouselPromoWidget extends StatefulWidget {
  const CarouselPromoWidget({
    Key? key,
    required this.banners,
  }) : super(key: key);
  final List<BannerResponse> banners;

  @override
  State<CarouselPromoWidget> createState() => _CarouselPromoWidgetState();
}

class _CarouselPromoWidgetState extends State<CarouselPromoWidget> {
  final CarouselController _controller = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.banners
              .map((banner) => CarouselPic(
                    image: banner.photo ?? '',
                    onTap: () {},
                  ))
              .toList(),
          carouselController: _controller,
          options: CarouselOptions(
              height: 170,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 1,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration: const Duration(milliseconds: 1500),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, _) {
                activeIndex = index;
                setState(() {});
              }),
        ),
        const SizedBox(height: 7),
        AnimatedSmoothIndicator(
          count: widget.banners.length,
          activeIndex: activeIndex,
          textDirection: TextDirection.ltr,
          effect: ExpandingDotsEffect(
              dotWidth: 16,
              dotHeight: 4,
              radius: 56,
              expansionFactor: 1.1,
              dotColor: AppColors.primaryColor.withOpacity(.3),
              activeDotColor: AppColors.primaryColor,
              spacing: 4),
        ),
      ],
    );
  }
}

/// item - widgets
class CarouselPic extends StatelessWidget {
  const CarouselPic({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          height: 170,
          width: MediaQuery.of(context).size.width - 40,
          placeholder: (context, url) => SvgPicture.asset(AppIcons.appLogo),
          errorWidget: (context, url, error) =>
              SvgPicture.asset(AppIcons.appLogo),
        ),
      ),
    );
  }
}
