//
//  ViewController.m
//  currencyConverter
//
//  Created by user141958 on 8/18/18.
//  Copyright © 2018 user141958. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController ()<CRCurrencyRequestDelegate>
@property (nonatomic)CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    self.convertButton.enabled = NO;
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
}

- (void)
    currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies{
        self.convertButton.enabled = YES;
    
    self.currencyA.text = @"Round Trip";
    
}



@end
