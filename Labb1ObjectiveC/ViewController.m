//
//  ViewController.m
//  Labb1ObjectiveC
//
//  Created by lösen är 0000 on 2018-01-13.
//  Copyright © 2018 lösen är 0000. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property ColorSettings *change;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [ColorSettings colorer];
}

- (IBAction)settingsButton:(id)sender {
    self.view.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    //self.view.backgroundColor = [self.change colorer];
    self.view.backgroundColor = [ColorSettings colorer];
}


@end
