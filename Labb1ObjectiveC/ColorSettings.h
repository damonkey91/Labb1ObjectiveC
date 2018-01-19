//
//  changeView2.h
//  Labb1ObjectiveC
//
//  Created by lösen är 0000 on 2018-01-18.
//  Copyright © 2018 lösen är 0000. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorSettings : NSObject
+(UIColor*)colorer;
+(void)addColorRed:(float)red blue:(float)blue green:(float)green;
@end

// vill kunna få en static property
// varför går det inte anropa en static metod på ett object

//self.view.backgroundColor = [self.change colorer]; Går inte

//[ChangeView2 colorer]; går

