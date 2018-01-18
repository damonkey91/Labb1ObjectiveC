//
//  SettingsViewController.m
//  Labb1ObjectiveC
//
//  Created by lösen är 0000 on 2018-01-18.
//  Copyright © 2018 lösen är 0000. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *opacitySlider;
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)switchChanged:(id)sender {
    self.view.backgroundColor = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
    //self.view.backgroundColor = [UIColor colorWithRed:[self invertColor:self.redSlider.value] green:[self invertColor:self.greenSlider.value] blue:[self invertColor:self.blueSlider.value] alpha:1];
    
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
