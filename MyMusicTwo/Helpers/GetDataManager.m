//
//  GetDataManager.m
//  MyMusicTwo
//
//  Created by huchunyuan on 15/9/23.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "GetDataManager.h"
#import "MusicModel.h"
#import "ProjectHandle.h"

@interface GetDataManager ()

@property (nonatomic,strong)NSMutableArray *musicList;

@end


@implementation GetDataManager
/** 数组懒加载,用到这个数组的时候采取初始化 */
- (NSMutableArray *)musicList{
    if (!_musicList) {
        _musicList = [NSMutableArray array];
    }
    return _musicList;
}

/** 重写count的get方法数组长度 */
- (NSInteger)count{
    return self.musicList.count;
}

/** 单例对象 */
+ (GetDataManager *)shardManager{
    static GetDataManager *audioManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        audioManager = [[GetDataManager alloc] init];
    });
    return audioManager;
}
/** 返回model */
- (MusicModel *)getModalWithIndex:(NSInteger)index{
    return self.musicList[index];
}
/** 请求数据 */
- (void)getDataWithUrlStr:(NSString *)UrlStr Block:(myBlcok)block{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSArray *array = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:kMusicListURL]];
        for (NSDictionary *dict in array) {
            MusicModel *musicModel = [MusicModel new];
            [musicModel setValuesForKeysWithDictionary:dict];
            [self.musicList addObject:musicModel];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            block();
        });
        
    });
}
@end
