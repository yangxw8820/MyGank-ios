//
//  ViewController.m
//  MyGank-ios
//
//  Created by ycl on 2017/9/4.
//  Copyright © 2017年 ycl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <WMPageControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.showOnNavigationBar = NO;
//    self.menuViewStyle = WMMenuViewStyleLine;
    self.menuView.style = WMMenuViewStyleLine;
    self.dataSource = self;
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  To inform how many child controllers will in `WMPageController`.
 *
 *  @param pageController The parent controller.
 *
 *  @return The value of child controllers's count.
 */
- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController {
    return 10;
}

/**
 *  Return a controller that you wanna to display at index. You can set properties easily if you implement this methods.
 *
 *  @param pageController The parent controller.
 *  @param index          The index of child controller.
 *
 *  @return The instance of a `UIViewController`.
 */
- (__kindof UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    UIViewController *vc = [[UIViewController alloc] init];
//    vc.view.backgroundColor = [UIColor colorWithRed:random() % 255 green:random() % 255 blue:random() % 255 alpha:0];
    vc.view.backgroundColor = [UIColor redColor];
    return vc;
}

/**
 *  Each title you wanna show in the `WMMenuView`
 *
 *  @param pageController The parent controller.
 *  @param index          The index of title.
 *
 *  @return A `NSString` value to show at the top of `WMPageController`.
 */
- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    return [NSString stringWithFormat:@"test %ld", index];
}

///**
// Implement this datasource method, in order to customize your own contentView's frame
//
// @param pageController The container controller
// @param contentView The contentView, each is the superview of the child controllers
// @return The frame of the contentView
// */
//- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
//
//}
//
///**
// Implement this datasource method, in order to customize your own menuView's frame
//
// @param pageController The container controller
// @param menuView The menuView
// @return The frame of the menuView
// */
//- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
//
//}


@end
