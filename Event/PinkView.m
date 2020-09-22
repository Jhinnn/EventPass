//
//  PinkView.m
//  Event
//
//  Created by admin on 2020/9/21.
//

#import "PinkView.h"


@implementation PinkView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"粉红色视图被点击了.....");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    //把当前触摸点坐标转换为相对于视图的触摸点坐标
    CGPoint subPoint = [self convertPoint:point toView:self.viewsss];
    
    if ([self.viewsss pointInside:subPoint withEvent:event]) {
        return self.viewsss;
    }
    return [super hitTest:point withEvent:event];
}

@end
