//
//  PagReplaceTextModel.m
//  pag
//
//  Created by james on 22/11/2024.
//

#import "PagReplaceTextModel.h"

@implementation PagReplaceTextModel

- (instancetype)initWithIndex:(NSInteger)index text:(NSString *)text fontSize:(CGFloat)fontSize fillColor:(NSInteger)fillColor {
    self = [super init];
    if (self) {
        _index = index;
        _text = text;
        _fontSize = fontSize;
        _fillColor = fillColor;
    }
    return self;
}

- (NSDictionary *)toJson {
    return @{
        @"index": @(self.index),
        @"text": self.text,
        @"fontSize": @(self.fontSize),
        @"fillColor": @(self.fillColor)
    };
}

+ (instancetype)fromJson:(NSDictionary *)json {
    NSInteger index = [json[@"index"] integerValue];
    NSString *text = json[@"text"];
    CGFloat fontSize = [json[@"fontSize"] floatValue];
    NSInteger fillColor = [json[@"fillColor"] integerValue];
    return [[self alloc] initWithIndex:index text:text fontSize:fontSize fillColor:fillColor];
}

@end
