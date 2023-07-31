//
//  ObjectDeallocMonitor.h
//  ObjectDeallocMonitor
//
//  Created by Jiang LinShan on 2023/7/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectDeallocMonitor : NSObject
- (instancetype)initWithBlock:(dispatch_block_t)block;
@end

NS_ASSUME_NONNULL_END
