//
//  NormalView.m
//  Event
//
//  Created by admin on 2020/9/21.
//

#import "NormalView.h"

@implementation NormalView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"通用视图被点击了。。。");
}


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"%@-----",[self class]);
    //1.是否允许用户进行交互
    if (self.userInteractionEnabled == NO || self.alpha <= 0.01 || self.hidden == YES) {
        return nil;
    }
    
    //2.当前点击的点是否在当前视图内
    if (![self pointInside:point withEvent:event]) {
        return nil;
    }
    
    //3.如果可以进行交互，并且点击的点在当前视图内，则遍历该视图的子视图
    for (int i = (int)self.subviews.count - 1; i >= 0; i--) {
        //获取一个子控件
        UIView *lastView = self.subviews[i];
        //把当前触摸点坐标转换为相对于子控件的触摸点坐标
        CGPoint subPoint = [self convertPoint:point toView:lastView];
        //判断是否在子控件中找到更合适的子控件
        UIView *nextView = [lastView hitTest:subPoint withEvent:event];
        if (nextView) {
            return nextView;
        }
    }
    
    return self;
}
@end
