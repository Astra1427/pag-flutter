import 'dart:convert';

/// 替换 pag 资源占位图
class PagReplaceImage {
  final int index;
  /// 图片 url
  final String imgUrl;

  PagReplaceImage({required this.index, required this.imgUrl});

  // 转换为 JSON
  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'imgUrl': imgUrl, // 转换为 Base64 字符串
    };
  }

  // 从 JSON 构造对象
  factory PagReplaceImage.fromJson(Map<String, dynamic> json) {
    return PagReplaceImage(
      index: json['index'],
      imgUrl: json['imgUrl'],
    );
  }
}

class PagReplaceImagePath{
  final int index;
  final String imgPath;

  PagReplaceImagePath({required this.index, required this.imgPath});

  // 转换为 JSON
  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'imgPath': imgPath, // 转换为 Base64 字符串
    };
  }
}
