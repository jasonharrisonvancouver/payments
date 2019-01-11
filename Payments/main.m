//
//  main.m
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[255];
        
        printf("Thank you for shopping at Acme.com\nYour total today is $%.2f\nPlease select your payment method:\n1: Paypal\n2: Stripe:\n3: Amazon:\n> ");
        
        fgets(input, 255, stdin);
        
        NSString *userInput = [NSString stringWithUTF8String:input];
        
        int choice = [userInput intValue];
        
        printf("You chose %d\n\n", choice);
        
        
    }
    return 0;
}
