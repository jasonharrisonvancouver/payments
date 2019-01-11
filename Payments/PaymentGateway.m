//
//  PaymentGateway.m
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)paymentAmountUSD{
    NSLog(@"processing payment of $%ld", paymentAmountUSD);
    [[self paymentDelegate]processPaymentAmount:paymentAmountUSD];
}


@end
