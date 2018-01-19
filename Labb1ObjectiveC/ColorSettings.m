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
    UIColor *color;
    float red = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedRed"];
    float green = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedGreen"];
    float blue = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBlue"];
    if (!red && !green && !blue) {
        color = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    }else{
        color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    }
    return color;
}

+(void)addColorRed:(float)red blue:(float)blue green:(float)green{
     [UIColor colorWithRed:red green:green blue:blue alpha:1];
    [[NSUserDefaults standardUserDefaults] setFloat:red  forKey:@"savedRed"];
    [[NSUserDefaults standardUserDefaults] setFloat:green forKey:@"savedGreen"];
    [[NSUserDefaults standardUserDefaults] setFloat:blue forKey:@"savedBlue"];
}
@end
