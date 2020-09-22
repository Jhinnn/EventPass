//
//  EVButton.m
//  Event
//
//  Created by admin on 2020/9/21.
//

#import "EVButton.h"

@implementation EVButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = self.bounds;
    CGFloat widthD = MAX(self.touchSize.width - bounds.size.width, 0);
    CGFloat hightD = MAX(self.touchSize.height - bounds.size.height, 0);
    CGRect newBounds = CGRectInset(bounds, -0.5 * widthD, -0.5 * hightD);
    return CGRectContainsPoint(newBounds, point);
}

@end
