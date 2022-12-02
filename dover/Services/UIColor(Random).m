//
//  UIColor(Random).m
//  dover
//
//  Created by Misha Causur on 02.12.2022.
//

#import "UIColor(Random).h"

@implementation UIColor(Random)
+(UIColor *)randomColor
{
    static BOOL sedded = NO;
    if (!sedded) {
        sedded = YES;
        srandom(time(NULL));
    }
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}

@end
