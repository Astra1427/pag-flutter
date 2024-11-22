package com.example.flutter_pag_plugin;

import org.json.JSONException;
import org.json.JSONObject;

public class PagReplaceTextModel {


    /// 占位文字下标
    /// index of the placeholder
    final int index;

    /// 替换的资源
    /// replace placeholder to data
    final String text;
    public float fontSize;
    public int fillColor;


    public PagReplaceTextModel(int index, String text, float fontSize, int fillColor) {
        this.index = index;
        this.text = text;
        this.fontSize = fontSize;
        this.fillColor = fillColor;
    }

    // 从 JSON 构造对象
    public static PagReplaceTextModel fromJson(JSONObject jsonObject) throws JSONException {
        int index = jsonObject.getInt("index");
        String text = jsonObject.getString("text");
        float fontSize = (float) jsonObject.getDouble("fontSize");
        int fillColor = jsonObject.getInt("fillColor");
        return new PagReplaceTextModel(index, text, fontSize, fillColor);
    }
}
