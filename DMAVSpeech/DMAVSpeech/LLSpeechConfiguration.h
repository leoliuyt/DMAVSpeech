//
//  LLSpeechConfiguration.h
//  DMAVSpeech
//
//  Created by lbq on 2017/9/14.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AVSpeechSynthesisVoice;
@interface LLSpeechConfiguration : NSObject

@property (nonatomic, strong) AVSpeechSynthesisVoice *voice;
@property(nonatomic) float rate;       // Values are pinned between AVSpeechUtteranceMinimumSpeechRate and AVSpeechUtteranceMaximumSpeechRate.
@property(nonatomic) float pitchMultiplier;  // [0.5 - 2] Default = 1 //音调高低
@property(nonatomic) float volume;           // [0-1] Default = 1

@property(nonatomic) NSTimeInterval preUtteranceDelay;    // Default is 0.0 ////播放前的延时时间
@property(nonatomic) NSTimeInterval postUtteranceDelay;   // Default is 0.0 ////播放下一段时的延时时间

//defaut configuration
+ (instancetype)defaultConfiguration;

@end
