//
//  ObjectDeallocMonitor.m
//  ObjectDeallocMonitor
//
//  Created by Jiang LinShan on 2023/7/29.
//

#import "ObjectDeallocMonitor.h"
@interface ObjectDeallocMonitor()
@property (nonatomic, copy) dispatch_block_t block;
@end

@implementation ObjectDeallocMonitor

- (instancetype)initWithBlock:(dispatch_block_t)block {
    self = [super init];
    if (self) {
        self.block = block;
    }
    return self;
}

- (void)dealloc {
    if (self.block) {
        self.block();
    }
}
@end
