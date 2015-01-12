//
//  ViewController.m
//  QR Code Generator Demo
//
//  Created by mohamed mohamed El Dehairy on 1/12/15.
//  Copyright (c) 2015 mohamed mohamed El Dehairy. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // initialise code generator
    codeGenerator = [[MDQRCodeGenerator alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)decodeAction:(id)sender
{
    if([codeField.text isEqualToString:@""])
    {
        return;
    }
    
    imageView.image = [codeGenerator createQRForString:codeField.text];
}

@end
