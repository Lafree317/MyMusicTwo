//
//  MusicCell.m
//  MyMusicTwo
//
//  Created by huchunyuan on 15/9/23.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "MusicCell.h"
#import "MusicModel.h"
#import "UIImageView+WebCache.h"

@interface MusicCell ()
/** 音乐名字 */
@property (weak, nonatomic) IBOutlet UILabel *musicName;
/** 歌手 */
@property (weak, nonatomic) IBOutlet UILabel *singer;
@property (weak, nonatomic) IBOutlet UIImageView *musicImageView;

@end

@implementation MusicCell

- (void)awakeFromNib {
    // Initialization code
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

// 重写setModel方法
- (void)setMusicModel:(MusicModel *)musicModel{
    [self.musicImageView sd_setImageWithURL:[NSURL URLWithString:musicModel.picUrl] placeholderImage:[UIImage imageNamed:@"lufei"]];
    self.musicImageView.layer.masksToBounds = YES;
    self.musicImageView.layer.cornerRadius = self.musicImageView.frame.size.height / 2;
    
    
    self.musicName.text = musicModel.name;
    self.singer.text = musicModel.singer;
}








@end
