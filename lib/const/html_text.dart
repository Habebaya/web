import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlText extends StatelessWidget {
  final String data;
  final double fontSize;
  final  FontStyle? fontStyle;
  final TextAlign? textAlign;
  final double width;

  HtmlText(
      {super.key,
      required this.data,
      required this.fontSize,
        required this.width,
      this.fontStyle = FontStyle.normal,
      this.textAlign = TextAlign.start});


  @override
  Widget build(BuildContext context) {

    return SizedBox(
       width:width,

      child: Html(
        data: data,
        shrinkWrap: true,
        style: {
          "div": Style(
            fontSize: FontSize(fontSize),
            fontFamily: 'Avenir LT Std',
            margin: Margins.zero,
            padding: HtmlPaddings.zero,
            textTransform: TextTransform.capitalize,
          ),
          "*": Style(
            fontSize: FontSize(fontSize),
            fontFamily: 'Avenir LT Std',
            margin: Margins.zero,
            lineHeight: const LineHeight(0),
            textTransform: TextTransform.capitalize,
            padding: HtmlPaddings.zero,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,


          ),
          "p": Style(
              fontSize: FontSize(fontSize),
              fontFamily: 'Avenir LT Std',
              textAlign: textAlign,
              textTransform: TextTransform.capitalize,
              lineHeight: const LineHeight(0)),
          "span": Style(
              fontSize: FontSize(fontSize),
              textAlign: textAlign,
              fontFamily: 'Avenir LT Std',
              textTransform: TextTransform.capitalize,
              lineHeight: const LineHeight(0)),
          "h1": Style(
              fontSize: FontSize(fontSize),
              fontFamily: 'Avenir LT Std',
              textAlign: textAlign,
              textTransform: TextTransform.capitalize,
              lineHeight: const LineHeight(0)),
          "b": Style(
              fontSize: FontSize(fontSize),
              fontFamily: 'Avenir LT Std',
              textAlign: textAlign,
              textTransform: TextTransform.capitalize,
              lineHeight: const LineHeight(0)),
          "strong": Style(
              fontSize: FontSize(fontSize),
              fontFamily: 'Avenir LT Std',
              textAlign: textAlign,
              textTransform: TextTransform.capitalize,
              lineHeight: const LineHeight(0)),
        },
      ),
    );

  }
}
