import 'package:lezione4/components/splash_page_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = SplashPageModel.splashPages;
  final PageController pageViewController = PageController(initialPage: 0);
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: listSplashPage(),
    ));
  }

  void onPageChanged(int currentPageIndex) {
    setState(() {
      this.currentPageIndex = currentPageIndex;
    });
  }

  void onIndicatorPressed(int indicatorIndex) {
    setState(() {
      pageViewController.animateToPage(indicatorIndex,
          duration: Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  Widget listSplashPage() => Stack(
        children: [
          PageView.builder(
            itemCount: pages.length,
            itemBuilder: (context, index) => SplashPage(model: pages[index]),
            onPageChanged: onPageChanged,
            controller: pageViewController,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: SplashPageIndicators(
              pageIndex: currentPageIndex,
              onIndicatorPress: onIndicatorPressed,
            ),
          ),
        ],
      );
}

class SplashPage extends StatelessWidget {
  final SplashPageModel model;
  SplashPage({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: model.backgroundColor,
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(48.0),
          margin: EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                model.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                model.description,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashPageIndicators extends StatelessWidget {
  final int pageIndex;
  final void Function(int) onIndicatorPress;

  SplashPageIndicators({
    required this.pageIndex,
    required this.onIndicatorPress,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            SplashPageModel.splashPages.length,
            (index) => GestureDetector(
                  onTap: () => onIndicatorPress(index),
                  child: Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: pageIndex == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                )),
      ),
    );
  }
}
