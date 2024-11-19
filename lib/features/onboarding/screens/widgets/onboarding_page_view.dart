import 'package:flutter/material.dart';
import 'page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          background: "assets/svg/page_view_item_background1.svg",
          image: "assets/svg/page_view_item,_image1.svg",
          title: "مرحبًا بك",
          subtitle: "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
        ),
        PageViewItem(
          isVisible: false,
          background: "assets/svg/page_view_item_background2.svg",
          image: "assets/svg/page_view_item,_image2.svg",
          title: "ابحث وتسوق",
          subtitle: "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية.",
        ),
      ],
    );
  }
}
