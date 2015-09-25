//
//  PlayMusicViewController.m
//  MyMusicTwo
//
//  Created by huchunyuan on 15/9/25.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "PlayMusicViewController.h"

@interface PlayMusicViewController ()
/** 音乐图片 */
@property (weak, nonatomic) IBOutlet UIImageView *musicImageView;
/** 当前时间 */
@property (weak, nonatomic) IBOutlet UILabel *currentTime;
/** 音乐总时间 */
@property (weak, nonatomic) IBOutlet UILabel *totalTime;
/** 音乐进度条 */
@property (weak, nonatomic) IBOutlet UISlider *progressSlider;
/** 音乐背景图片 */
@property (weak, nonatomic) IBOutlet UIView *ImageBackgroundView;





@end

@implementation PlayMusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/** 开始结束 */
- (IBAction)startAndPause:(id)sender {
}
/** 上一首 */
- (IBAction)lastMusic:(id)sender {
}
/** 下一首 */
- (IBAction)nextMusic:(id)sender {
}

@end
