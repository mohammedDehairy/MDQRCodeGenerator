//
//  ViewController.h
//  QR Code Generator Demo
//
//  Created by mohamed mohamed El Dehairy on 1/12/15.
//  Copyright (c) 2015 mohamed mohamed El Dehairy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDQRCodeGenerator.h"

@interface ViewController : UIViewController
{
    IBOutlet UITextField *codeField;
    IBOutlet UIImageView *imageView;
    
    MDQRCodeGenerator *codeGenerator;
}

@end

