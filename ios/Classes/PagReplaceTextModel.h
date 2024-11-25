//
//  PagReplaceTextModel.h
//  Pods
//
//  Created by james on 22/11/2024.
//

#import <Foundation/Foundation.h>

@interface PagReplaceTextModel : NSObject

@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) CGFloat fontSize; // 在 iOS 中，字体大小通常使用 CGFloat
@property (nonatomic, assign) NSInteger fillColor;

- (instancetype)initWithIndex:(NSInteger)index text:(NSString *)text fontSize:(CGFloat)fontSize fillColor:(NSInteger)fillColor;

// 转换为 JSON Dictionary
- (NSDictionary *)toJson;

// 从 JSON Dictionary 构造对象
+ (instancetype)fromJson:(NSDictionary *)json;

@end
