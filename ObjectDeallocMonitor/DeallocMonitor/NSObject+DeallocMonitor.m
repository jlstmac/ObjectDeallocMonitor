//
//  NSObject+DeallocMonitor.m
//  ObjectDeallocMonitor
//
//  Created by Jiang LinShan on 2023/7/29.
//

#import "NSObject+DeallocMonitor.h"
#import "ObjectDeallocMonitor.h"
#import <objc/runtime.h>

@implementation NSObject (DeallocMonitor)
- (void)addDeallocMonitorFor:(id)obj withBlock:(dispatch_block_t)block {
    if (!obj || !block) return;
    ObjectDeallocMonitor* monitor = [[ObjectDeallocMonitor alloc] initWithBlock:block];
    objc_setAssociatedObject(self, @"DeallocMonitor", monitor, OBJC_ASSOCIATION_RETAIN);
}
@end
