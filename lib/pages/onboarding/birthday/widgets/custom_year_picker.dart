import 'package:fitnessapp/data/years.dart';
import 'package:fitnessapp/pages/onboarding/birthday/widgets/year_item_widget.dart';
import 'package:flutter/material.dart';

class CustomYearPicker extends StatefulWidget {

  final Function(String selectedYear) onYearChanged;

  const CustomYearPicker({
    Key? key,
    required this.onYearChanged,
  }) : super(key: key);

  @override
  State<CustomYearPicker> createState() => _CustomYearPickerState();
}

class _CustomYearPickerState extends State<CustomYearPicker> {

  int _currentIndex = 50;
  List<String> years = Years.getYears();
  final PageController _pageController = PageController(
    initialPage: 50,
    viewportFraction: 0.3,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
          widget.onYearChanged(years[_currentIndex]);
        },
        controller: _pageController,
        itemCount: years.length,
        itemBuilder: (BuildContext context, int index) =>
            YearItemWidget(year: years[index], isSelected: _currentIndex == index),
      ),
    );
  }
}

