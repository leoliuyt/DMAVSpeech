//
//  LLSpeechConfiguration.m
//  DMAVSpeech
//
//  Created by lbq on 2017/9/14.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import "LLSpeechConfiguration.h"
#import <AVFoundation/AVFoundation.h>

@interface LLSpeechConfiguration()

@end

@implementation LLSpeechConfiguration

+ (instancetype)defaultConfiguration
{
    LLSpeechConfiguration *configuration = [LLSpeechConfiguration new];
    configuration.voice = [AVSpeechSynthesisVoice voiceWithLanguage:[AVSpeechSynthesisVoice currentLanguageCode]];
    configuration.rate = (AVSpeechUtteranceMaximumSpeechRate - AVSpeechUtteranceMinimumSpeechRate)/2.0;
    configuration.volume = 1;
    configuration.pitchMultiplier = 1;
    configuration.preUtteranceDelay = 0.0;
    configuration.postUtteranceDelay = 0.0;
    return configuration;
}

@end
