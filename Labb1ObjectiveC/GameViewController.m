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
@property (nonatomic) int random;
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setRandom];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guess:(id)sender {
    /*
     Ta emot input
     kolla ifall de är siffra
     kolla så siffan är mellan 1-100
     stämmer båda ovan så ange om det är rätt siffra eller
     högre lägre
     */
    NSString* input = self.textViewInput.text;
    if ([self isInputNumber: input]) {
        int intInput = [input intValue];
        if ([self isInput: intInput between: 1 and:100]) {
            if (intInput == self.random) {
                NSString* messa = [NSString stringWithFormat:@"%i is right answear! Play agin.", intInput];
                [self setLowOrHighLabel: messa];
                [self setRandom];
            } else if (intInput < self.random)
                [self setLowOrHighLabel: @"To low!"];
            else
                [self setLowOrHighLabel: @"To high!"];
            
        }
    }
}

-(BOOL) isInputNumber: (NSString*)inpu {
    return [inpu intValue] != 0;
}

-(BOOL) isInput: (int) inp between: (int) first and: (int)second {
    return inp <= second  && inp >= first;
}

-(void) setRandom {
    self.random = arc4random_uniform(100) + 1;
}

-(void) setLowOrHighLabel: (NSString*) message {
    self.labelLowOrHigh.text = message;
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
