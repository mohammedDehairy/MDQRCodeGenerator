//
//  MDQRCodeGenerator.m
//  QR Code Generator
//
//  Created by mohamed mohamed El Dehairy on 1/12/15.
//  Copyright (c) 2015 mohamed mohamed El Dehairy. All rights reserved.
//

#import "MDQRCodeGenerator.h"

@implementation MDQRCodeGenerator
-(instancetype)init
{
    if(self = [super init])
    {
        context = [CIContext contextWithOptions:nil];
    }
    return self;
}
- (UIImage *)createQRForString:(NSString *)qrString
{
    // Need to convert the string to a UTF-8 encoded NSData object
    NSData *stringData = [qrString dataUsingEncoding:NSUTF8StringEncoding];
    
    // Create the filter
    CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    // Set the message content and error-correction level
    [qrFilter setValue:stringData forKey:@"inputMessage"];
    [qrFilter setValue:@"M" forKey:@"inputCorrectionLevel"];
    
    CIImage *outPutCIImage = qrFilter.outputImage;
    
    //scale the output image 10 times
    CGAffineTransform transform = CGAffineTransformMakeScale(10.0f, 10.0f);
    CIImage *output = [outPutCIImage imageByApplyingTransform: transform];

    //render the CIImage output to a UIImage
    UIImage *result = [UIImage imageWithCGImage:[context createCGImage:output fromRect:output.extent]];
    
    // Send the image back
    return result;
}
@end
