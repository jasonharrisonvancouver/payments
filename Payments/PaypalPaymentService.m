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

@end
