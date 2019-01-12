//
//  PaymentGateway.h
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@protocol PaymentDelegate <NSObject>
@required
- (void)processPaymentAmount:(NSInteger)paymentAmountUSD;
- (BOOL)canProcessPayment;
@end



@interface PaymentGateway : NSObject


@property (weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)paymentAmountUSD;

@end

NS_ASSUME_NONNULL_END
