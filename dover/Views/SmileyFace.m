//
//  SmileyFace.m
//  dover
//
//  Created by Misha Causur on 02.12.2022.
//

#import "SmileyFace.h"

@interface SmileyFace()
@property (nonatomic, retain) UIColor * eyeColor;
@end

@implementation SmileyFace
@synthesize  eyeColor = _eyeColor;

- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
//    CGAffineTransform ctm = CGContextGetCTM(context);
//    CGAffineTransform ctmInverse = CGAffineTransformInvert(ctm);
//    CGContextConcatCTM(context, ctmInverse);
    CGContextSetLineWidth(context, 4.0f);
    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextAddEllipseInRect(context, CGRectInset(self.bounds, 2.0f, 2.0f));
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextRestoreGState(context);
}

@end
