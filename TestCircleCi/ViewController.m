//
//  ViewController.m
//  TestCircleCi
//
//  Created by Marcelo Santos on 15/01/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

#import "ViewController.h"
#import <CircleCiTestFramework/TestClass.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestClass* testClass = [TestClass new];
    
    NSLog([testClass testMethod]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
