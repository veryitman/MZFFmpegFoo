//
//  ViewController.m
//  MZFFMPEG
//
//  Created by mark.zhang on 7/29/16.
//  Copyright © 2016 veryitman. All rights reserved.
//

#import "ViewController.h"

#include "avcodec.h"
#include "avutil.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lbVersion;

@property (strong, nonatomic) IBOutlet UIImageView *ffmpegImg;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    avcodec_register_all();
    
    // 获取 ffmpeg 版本号
    const char *version = av_version_info();
    NSLog(@"version: %s", version);
    
    self.lbVersion.text = [NSString stringWithFormat:@"FFmpeg Version:%@",
                           [NSString stringWithUTF8String:version]];
}

@end
