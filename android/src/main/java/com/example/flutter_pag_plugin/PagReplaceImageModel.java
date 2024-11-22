package com.example.flutter_pag_plugin;

import org.json.JSONException;
import org.json.JSONObject;


public class PagReplaceImageModel {


    /// 占位图下标
    /// index of the placeholder
    final int index;

    /// 替换的资源
    /// replace placeholder to img
    final String imgPath;



    public PagReplaceImageModel(final int index, final String imgPath) {
        this.index = index;
        this.imgPath = imgPath;
    }

    // 从 JSON 构造对象
    public static PagReplaceImageModel fromJson(JSONObject jsonObject) throws JSONException {
        int index = jsonObject.getInt("index");
        String imgPath = jsonObject.getString("imgPath");
        return new PagReplaceImageModel(index, imgPath);
    }
}
