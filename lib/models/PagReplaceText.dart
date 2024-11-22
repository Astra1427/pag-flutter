import 'dart:convert';

/// 替换 pag 资源占位文字
class PagReplaceText {
  /// 文字下标
  final int index;
  /// 文本内容
  final String text;
  /// 字体大小
  final double fontSize;
  /// 填充颜色
  final int fillColor;

  PagReplaceText({
    required this.index,
    required this.text,
    required this.fontSize,
    required this.fillColor,
  });

  // 转换为 JSON
  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'text': text,
      'fontSize': fontSize,
      'fillColor': fillColor,
    };
  }

  // 从 JSON 构造对象
  factory PagReplaceText.fromJson(Map<String, dynamic> json) {
    return PagReplaceText(
      index: json['index'],
      text: json['text'],
      fontSize: json['fontSize'],
      fillColor: json['fillColor'],
    );
  }
}