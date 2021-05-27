import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_component/components/common/dividing_line.dart';
import 'package:flutter_component/components/common/place_holder.dart';

class ListButton extends StatefulWidget {
  final double itemHeight;

  final String text;

  final TextStyle textStyle;

  final Function? onClickAction;

  final Color bgColor;

  final bool isTopLineShow;

  final bool isBottomLineShow;

  ListButton({
        this.itemHeight = 56,
        this.isTopLineShow = true,
        this.isBottomLineShow = true,
        this.onClickAction,
        this.text = "",
        this.textStyle = const TextStyle(),
        this.bgColor = Colors.white});

  @override
  State<StatefulWidget> createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      color: widget.bgColor,
      child: InkWell(
        child: Container(
          height: widget.itemHeight,
          width: double.infinity,
          child: Column(
            children: [
              widget.isTopLineShow ? DividingLine(Colors.grey, height: 0.2, margin: EdgeInsets.zero) : Container(),
              Spacer(),
              Text(widget.text, style: widget.textStyle),
              Spacer(),
              widget.isBottomLineShow ? DividingLine(Colors.grey, height: 0.2, margin: EdgeInsets.zero) : Container(),
            ],
          ),
        ),
        onTap: () => widget.onClickAction?.call(),
      ),
    );
  }
}
