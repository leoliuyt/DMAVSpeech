//
//  ViewController.m
//  DMAVSpeech
//
//  Created by lbq on 2017/9/14.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "LLSpeechController.h"


@interface ViewController ()

@property (nonatomic, copy) NSArray<NSString *> *speechStrings;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.speechStrings = @[@"hello world!",
                           @"abcd",
                           @"小明你真帅"
                           ];
    NSArray *arr = [AVSpeechSynthesisVoice speechVoices];
    NSString *str = [AVSpeechSynthesisVoice currentLanguageCode];
    
    [[LLSpeechController speechController] speakSpeech:self.speechStrings];
//    web.configuration = [WKWebViewConfiguration]
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
