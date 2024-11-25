//
//  PagReplaceImageModel.h
//  pag
//
//  Created by james on 22/11/2024.
//

#import <Foundation/Foundation.h>

@interface PagReplaceImageModel : NSObject

@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) NSString *imgPath;

- (instancetype)initWithIndex:(NSInteger)index imgPath:(NSString *)imgPath;

// 转换为 JSON Dictionary
- (NSDictionary *)toJson;
 
// 从 JSON Dictionary 构造对象
+ (instancetype)fromJson:(NSDictionary *)json;

@end
