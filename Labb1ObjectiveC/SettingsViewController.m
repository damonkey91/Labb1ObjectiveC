//
//  SettingsViewController.m
//  Labb1ObjectiveC
//
//  Created by lösen är 0000 on 2018-01-18.
//  Copyright © 2018 lösen är 0000. All rights reserved.
//

#import "SettingsViewController.h"
#import "ColorSettings.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *opacitySlider;
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [ColorSettings colorer];
    float red = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedRed"];
    float green = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedGreen"];
    float blue = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBlue"];
    if (!red && !green && !blue) {
        self.redSlider.value = 1;
        self.greenSlider.value = 1;
        self.blueSlider.value = 1;
    }else{
        self.redSlider.value = red;
        self.greenSlider.value = green;
        self.blueSlider.value = blue;
    }
}
- (IBAction)switchChanged:(id)sender {
     UIColor *color = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
    self.view.backgroundColor = color;
   
    [[NSUserDefaults standardUserDefaults] setFloat:self.redSlider.value  forKey:@"savedRed"];
    [[NSUserDefaults standardUserDefaults] setFloat: self.greenSlider.value forKey:@"savedGreen"];
    [[NSUserDefaults standardUserDefaults] setFloat:self.blueSlider.value  forKey:@"savedBlue"];
    
}

- (float)invertColor:(float)color{
    return 1.0-color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
