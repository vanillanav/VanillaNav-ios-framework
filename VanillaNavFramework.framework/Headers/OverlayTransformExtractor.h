
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "OverlayTransformModel.h"

@interface OverlayTransformExtractor : NSObject 

+ (OverlayTransformModel*)transformFromPixelBuffer:(CMSampleBufferRef)pixelBuffer;

@end
