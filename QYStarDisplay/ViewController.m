//
//  ViewController.m
//  QYStarDisplay
//
//  Created by qiannian on 2018/5/9.
//  Copyright © 2018年 qiannian. All rights reserved.
//

#import "ViewController.h"
#import "QYStarReplay.h"
@interface ViewController ()<QYStarReplayDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    QYStarReplay *starReplay = [[QYStarReplay alloc] initWithFrame:CGRectMake(20, 60, 200, 30)];
    starReplay.isAnimation = YES;
    starReplay.rateStyle = RateStyleIncompleteStar;
    starReplay.tag = 1;
    starReplay.delegate = self;
    [self.view addSubview:starReplay];
    
    QYStarReplay *starReplay2 = [[QYStarReplay alloc] initWithFrame:CGRectMake(20, 100, 200, 30) numberOfStars:5 rateStyle:RateStyleHalfStar isAnination:YES delegate:self];
    starReplay2.tag = 2;
    [self.view addSubview:starReplay2];
    
    QYStarReplay *starReplay3 = [[QYStarReplay alloc] initWithFrame:CGRectMake(20, 140, 200, 30) finish:^(CGFloat currentScore) {
        NSLog(@"3----  %f",currentScore);
    }];
    [self.view addSubview:starReplay3];
    
    QYStarReplay *starReplay4 = [[QYStarReplay alloc] initWithFrame:CGRectMake(20, 180, 200, 30) numberOfStars:5 rateStyle:RateStyleHalfStar isAnination:YES finish:^(CGFloat currentScore) {
        NSLog(@"4----  %f",currentScore);
    }];
    [self.view addSubview:starReplay4];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
