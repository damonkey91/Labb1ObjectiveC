//
//  changeView2.m
//  Labb1ObjectiveC
//
//  Created by lösen är 0000 on 2018-01-18.
//  Copyright © 2018 lösen är 0000. All rights reserved.
//

#import "ColorSettings.h"

@implementation ColorSettings
+(UIColor*)colorer{
    UIColor *color = [UIColor colorWithRed:[[NSUserDefaults standardUserDefaults] floatForKey:@"savedRed"] green:[[NSUserDefaults standardUserDefaults] floatForKey:@"savedGreen"] blue:[[NSUserDefaults standardUserDefaults] floatForKey:@"savedBlue"] alpha:1];
    return color;
}

+(void)addColorRed:(float)red blue:(float)blue green:(float)green{
     [UIColor colorWithRed:red green:green blue:blue alpha:1];
    [[NSUserDefaults standardUserDefaults] setFloat:red  forKey:@"savedRed"];
    [[NSUserDefaults standardUserDefaults] setFloat:green forKey:@"savedGreen"];
    [[NSUserDefaults standardUserDefaults] setFloat:blue forKey:@"savedBlue"];
}
@end
