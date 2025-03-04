import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStar = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu, color: Colors.white),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 300,
              child: Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: "Yosemite"),
                        AppLargeText(
                          text: "\$ 250",
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 11),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(width: 5),
                        AppText(
                          text: "USA, California",
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color:
                                  gottenStar > index
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                            );
                          }),
                        ),
                        SizedBox(width: 10),
                        AppText(text: "(4.0)", color: AppColors.textColor2),
                      ],
                    ),

                    SizedBox(height: 25),
                    AppLargeText(text: "People", color: Colors.black, size: 23),
                    SizedBox(height: 5),
                    AppText(text: "Number of people in the group"),
                    SizedBox(height: 10),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: AppButtons(
                              color:
                                  selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                              backgroundColor:
                                  selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                              borderColor:
                                  selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                              size: 60,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),
                    AppLargeText(text: "Description", color: Colors.black87),
                    AppText(
                      text:
                          "dhfjsdbgdsjbgjsdbgjbsdjgbsjdgbjsbgjsdbkgsbdkgbskdbkjgbsdsjkdfjdsfhjksdhfkshdfkshdkfhsdkfhskdhfksjdfkj",
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 20,
              bottom: 50,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.textColor2,
                    size: 60,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20),
                  ResponsiveButton(isResponsive: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
