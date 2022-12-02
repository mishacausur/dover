//
//  ViewController.m
//  dover
//
//  Created by Misha Causur on 02.12.2022.
//

#import "ViewController.h"
#import "SmileyFace.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch*anyTouch = [touches anyObject];
    if (anyTouch.tapCount == 2) {
        NSLog(@"Add a face at this location");
        CGFloat edgeLegth = (self.view.bounds.size.width + self.view.bounds.size.height) / 8.0;
        SmileyFace*newSmile = [[SmileyFace alloc] initWithFrame:CGRectMake(0, 0, edgeLegth, edgeLegth)];
        newSmile.center = [anyTouch locationInView:self.view];
        [self.view addSubview:newSmile];
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
