//
//  MDQRCodeGenerator.h
//  QR Code Generator
//
//  Created by mohamed mohamed El Dehairy on 1/12/15.
//  Copyright (c) 2015 mohamed mohamed El Dehairy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>

@interface MDQRCodeGenerator : NSObject
{
    CIContext *context;
}
- (UIImage *)createQRForString:(NSString *)qrString;
@end
