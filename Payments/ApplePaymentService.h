//
//  ApplePaymentService.h
//  Payments
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
NS_ASSUME_NONNULL_BEGIN

@interface ApplePaymentService : NSObject<PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
