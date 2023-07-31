//
//  ViewController.m
//  ObjectDeallocMonitor
//
//  Created by Jiang LinShan on 2023/7/29.
//

#import "ViewController.h"
#import "NSObject+DeallocMonitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    {
        NSObject* obj = NSObject.new;
        [obj addDeallocMonitorFor:obj withBlock:^{
            NSLog(@"dealloc");
        }];
    }
    NSLog(@"out");
}


@end
