//
//  SmileyFace.m
//  dover
//
//  Created by Misha Causur on 02.12.2022.
//

#import "SmileyFace.h"
#import "UIColor(Random).h"

@interface SmileyFace()
@property (nonatomic, retain) UIColor * eyeColor;
@end

@implementation SmileyFace
@synthesize  eyeColor = _eyeColor;

- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        self.backgroundColor = [UIColor clearColor];
        self.eyeColor = [UIColor randomColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGFloat smileRadius = self.bounds.size.width / 2.0f - 2.0f;
    CGPoint centerPoint = CGPointMake(self.bounds.size.width/2.0f,
                                      self.bounds.size.height/2.0f);
    
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
    
    CGContextSetLineWidth(context, 2.0f);
    CGContextSetFillColorWithColor(context, self.eyeColor.CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGFloat eyeRadius = 0.25 * smileRadius;
    CGFloat eyeXValue = centerPoint.x + 0.5*smileRadius*cos(45.0/180.0*M_PI);
    eyeXValue -= eyeRadius;
    CGFloat eyeYValue = centerPoint.y + 0.5*smileRadius*sin(225.0/180.0*M_PI);
    eyeYValue -= eyeRadius;
    CGRect eyeRect = CGRectMake(eyeXValue, eyeYValue, eyeRadius*2.0, eyeRadius*2.0);
    CGContextAddEllipseInRect(context, eyeRect);
    
    eyeRect.origin.x -= 2.0 * (0.5*smileRadius*cos(45.0/180.0*M_PI));
    CGContextAddEllipseInRect(context, eyeRect);
    CGContextDrawPath(context, kCGPathFillStroke);
    
    CGContextRestoreGState(context);
}

@end
