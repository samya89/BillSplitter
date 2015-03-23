//
//  ViewController.m
//  BillSplitter
//
//  Created by Samia Al Rahmani on 3/23/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *splitAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *showPeopleLabel;

- (IBAction)calculateSplitBill:(id)sender;
- (IBAction)displaySliderNumber:(id)sender;


@property (nonatomic) NSMutableString *billAmountInput;
@property (nonatomic, assign) float billAmount;
@property (nonatomic, assign) float splitBillAmount;
@property (nonatomic, assign) float sliderInput;
@property (nonatomic, assign) int people;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.billTextField becomeFirstResponder];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateSplitBill:(id)sender {
    NSString *billAmountInput = self.billTextField.text;
    NSString *formattedBillAmountInput = [billAmountInput substringFromIndex:1];
    float billAmount = [formattedBillAmountInput floatValue];
    float sliderInput = [self.numberOfPeopleSlider value];
    float splitBillAmount = billAmount / sliderInput;
    self.splitAmountLabel.text = [NSString stringWithFormat:@"$ %.2f each", splitBillAmount];

}

- (IBAction)displaySliderNumber:(id)sender {
    self.sliderInput = [self.numberOfPeopleSlider value];
    int people = (int)self.sliderInput;
    self.showPeopleLabel.text = [NSString stringWithFormat:@"%d people", people];
    
    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}


-(void)textFieldDidEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
}




@end











