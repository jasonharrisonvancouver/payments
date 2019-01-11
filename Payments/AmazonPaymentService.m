//
//  AmazonPaymentService.m
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmountUSD{
    NSLog(@"amazon processing payment of $%ld", paymentAmountUSD);
}

@end
