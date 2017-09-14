//
//  LLSpeechController.h
//  DMAVSpeech
//
//  Created by lbq on 2017/9/14.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AVSpeechSynthesisVoice,LLSpeechConfiguration;

@interface LLSpeechController : NSObject

@property (nonatomic, readonly, strong) LLSpeechConfiguration *configuration;

+ (instancetype)speechController;
- (instancetype)initWithConfiguration:(LLSpeechConfiguration *)configuration;

- (void)speakSpeech:(NSArray<NSString *>*)speechStrings;
@end
