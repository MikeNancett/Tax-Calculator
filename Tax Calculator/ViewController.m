//
//  ViewController.m
//  Tax Calculator
//
//  Created by Mike Nancett on 5/19/16.
//  Copyright © 2016 Mike Nancett. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property  double sfTax;
@property double chiTax;
@property double nycTax;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //sfTax rate
    self.sfTax = .0875;
    //chiTax Rate
    self.chiTax = .1025;
    //nycTax rate
    self.nycTax = .08875;
    
    
}



- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *priceFromUser = self.priceTextField.text;
    int enteredValue = priceFromUser.intValue;
    
    if(self.segmentedControl.selectedSegmentIndex == 0){
        //price * tax SF
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat: @"The tax on $%d is $%.2f.", enteredValue, result];
    }else if(self.segmentedControl.selectedSegmentIndex == 1){
        //price * tax CHI
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat: @"The tax on $%d is $%.2f.", enteredValue, result];
    }else {
        //price * tax NYC
        double result = enteredValue * self.nycTax;
        self.resultLabel.text = [NSString stringWithFormat: @"The tax on $%d is $%.2f.", enteredValue, result];
    }
}

@end
