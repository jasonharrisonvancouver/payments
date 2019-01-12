//
//  PaypalPaymentService.m
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmountUSD{
    NSLog(@"paypal processing payment of $%ld", paymentAmountUSD);
}

- (BOOL)canProcessPayment{
    
    int random0or1 = arc4random_uniform(2);
    
    if(random0or1 == 0){
        return NO;
    }
    
    return YES;
}

@end
