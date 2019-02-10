//
//  ViewController.m
//  CrashCatcher
//
//  Created by Andrey Kasatkin on 2/9/19.
//  Copyright © 2019 Svetliy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)stackOverflow {
    NSArray *resultMessages = [NSMutableArray arrayWithObject: @"Error message!"];
    NSMutableArray *results = [[NSMutableArray alloc] init];
    
    for (NSObject *result in resultMessages)
        [results addObject: results]; // Whoops!
    
    NSLog(@"Results: %@", results);
}

- (IBAction)crashClicked:(UIButton *)sender {
    NSMutableArray *emptyArray = [NSMutableArray new];
    NSLog(@"Print first element of the array: %@", emptyArray[0]);
}

@end
