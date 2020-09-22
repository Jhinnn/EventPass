//
//  ViewController.m
//  Event
//
//  Created by admin on 2020/9/21.
//

#import "ViewController.h"
#import "PinkView.h"
#import "YellowView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet YellowView *yellowV;
@property (weak, nonatomic) IBOutlet PinkView *pinkV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.pinkV.viewsss = self.yellowV;
    
}


@end
