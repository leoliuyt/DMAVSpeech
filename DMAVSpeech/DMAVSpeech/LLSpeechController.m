//
//  LLSpeechController.m
//  DMAVSpeech
//
//  Created by lbq on 2017/9/14.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import "LLSpeechController.h"
#import <AVFoundation/AVFoundation.h>
#import "LLSpeechConfiguration.h"
@interface LLSpeechController()

@property (nonatomic, strong) AVSpeechSynthesizer *synthesizer;//语音合成器
@property (nonatomic, strong) LLSpeechConfiguration *configuration;

@end

@implementation LLSpeechController

+ (instancetype)speechController
{
    return [[self alloc] initWithConfiguration:[LLSpeechConfiguration defaultConfiguration]];
}

- (instancetype)initWithConfiguration:(LLSpeechConfiguration *)configuration
{
    if (self = [super init]) {
        _synthesizer = [[AVSpeechSynthesizer alloc] init];
        if (configuration) {
            self.configuration = configuration;
        } else {
            self.configuration = [LLSpeechConfiguration defaultConfiguration];
        }
    }
    return self;
}

- (void)speakSpeech:(NSArray<NSString *>*)speechStrings
{
    [speechStrings enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //Utterance 发声
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:obj];
        utterance.voice = self.configuration.voice;
        utterance.rate = self.configuration.rate;
        utterance.pitchMultiplier = self.configuration.pitchMultiplier;
        utterance.postUtteranceDelay = self.configuration.postUtteranceDelay;
        [self.synthesizer speakUtterance:utterance];
    }];
}

@end
