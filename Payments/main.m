//
//  main.m
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[255];
        int randomAmountUSCents = arc4random_uniform(100001); // $0.00 - $1000 inclusive
        
        float randomAmountUSDollars = round((float)(randomAmountUSCents / 100));
        
        printf("Thank you for shopping at Acme.com\nYour total today is $%.2f\nPlease select your payment method:\n1: Paypal\n2: Stripe:\n3: Amazon:\n> ",
               randomAmountUSDollars);
        
        fgets(input, 255, stdin);
        
        NSString *userInput = [NSString stringWithUTF8String:input];
        
        int choice = [userInput intValue];
        
        printf("You chose %d\n\n", choice);
        
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        
        switch(choice){
            case(1):
                NSLog(@"paypal choice");
                paymentGateway.paymentDelegate = paypal;
                break;
            case(2):
                paymentGateway.paymentDelegate = stripe;
                break;
            case(3):
                paymentGateway.paymentDelegate = amazon;
                break;
            default:
                break;
        }
        
        [paymentGateway processPaymentAmount:(NSInteger)randomAmountUSDollars];

        
        
        
        
    }
    return 0;
}
