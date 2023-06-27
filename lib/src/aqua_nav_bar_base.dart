import 'package:aqua_nav_bar/src/button_widget.dart';
import 'package:flutter/material.dart';

import 'bar_items.dart';


typedef OnButtonPressCallback = void Function(int index);

class AquaNavBar extends StatefulWidget {

  /// Bar radius
  final BorderRadius borderRadius;

  /// Bar background Color
  final Color backgroundColor;

  /// Bar Items
  final List<BarItem> barItems;

  /// Callback When individual barItem is pressed.
  final OnButtonPressCallback onItemSelected;

  /// Current selected index of the bar item.
  final int selectedIndex;

  /// Text Size for title
  final double textSize;

  /// Color for Title
  final Color titleColor;

  /// Color for selected Item
  final Color selectedColor;



  const AquaNavBar({Key? key,
    this.borderRadius = const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
    this.backgroundColor = Colors.white,
    required this.barItems,
    required this.selectedIndex,
    required this.onItemSelected,
    this.textSize = 15.0,
    this.titleColor = Colors.grey,
    this.selectedColor = Colors.blue

  }) :
        assert(barItems.length > 1, 'You must provide minimum 2 bar items'),
        assert(barItems.length < 5, 'Maximum bar items count is 4, Provide Bar Item >1 & <5'),
        super(key: key);



  @override
  State<AquaNavBar> createState() => _AquaNavBarState();
}

class _AquaNavBarState extends State<AquaNavBar> {


  void _onTap(int index) {
    final int selectedIndex = widget.selectedIndex;

    if (selectedIndex == index ) {
      return;
    } else {
      widget.onItemSelected(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 76,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius
      ),
      alignment: Alignment.center,
      child: Align(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.barItems.map((BarItem barItem){
            final int index = widget.barItems.indexOf(barItem);
            return ButtonWidget(
                icon: barItem.icon,
                title: barItem.title,
                index: index,
                onPressed: () => _onTap(index),
                selectedIndex: widget.selectedIndex,
              textSize: widget.textSize,
              titleColor: widget.titleColor,
              selectedColor: widget.selectedColor,

            );
          }
          ).toList(),
        ),
      )
    );
  }
}

