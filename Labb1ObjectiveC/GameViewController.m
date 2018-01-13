//
//  GameViewController.m
//  Labb1ObjectiveC
//
//  Created by lösen är 0000 on 2018-01-13.
//  Copyright © 2018 lösen är 0000. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelLowOrHigh;
@property (weak, nonatomic) IBOutlet UITextField *textViewInput;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guess:(id)sender {
    NSString* input = self.textViewInput.text;
    self.labelLowOrHigh.text = input;
    NSLog(input);
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
