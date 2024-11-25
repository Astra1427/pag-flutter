//
//  PagReplaceImageModel.m
//  pag
//
//  Created by james on 22/11/2024.
//

#import "PagReplaceImageModel.h"

@implementation PagReplaceImageModel

- (instancetype)initWithIndex:(NSInteger)index imgPath:(NSString *)imgPath {
    self = [super init];
    if (self) {
        _index = index;
        _imgPath = imgPath;
    }
    return self;
}

- (NSDictionary *)toJson {
    return @{
        @"index": @(self.index),
        @"imgPath": self.imgPath
    };
}

+ (instancetype)fromJson:(NSDictionary *)json {
    NSInteger index = [json[@"index"] integerValue];
    NSString *imgPath = json[@"imgPath"];
    return [[self alloc] initWithIndex:index imgPath:imgPath];
}

@end
