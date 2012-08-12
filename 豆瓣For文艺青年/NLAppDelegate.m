//
//  NLAppDelegate.m
//  豆瓣For文艺青年
//
//  Created by Nono on 12-7-29.
//  Copyright (c) 2012年 NonoWithLilith. All rights reserved.
//

#import "NLAppDelegate.h"
#import "NLRootViewController.h"
#import "NLHomeViewController.h"
#import "NLBookViewController.h"

@implementation NLAppDelegate

@synthesize window = _window;
@synthesize nav;
@synthesize isLogin,token;

- (void)dealloc
{
    [_window release];
    [token release];
    [nav release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
        
    
   NSString *_appName = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString*)kCFBundleNameKey];
    
    //step1：添加根视图
    
    NLRootViewController *root = [[NLRootViewController alloc]init];
    
    UINavigationController *navBar = [[UINavigationController alloc]initWithRootViewController:root];
    self.nav = navBar;
    [nav.navigationBar setBarStyle:UIBarStyleBlackOpaque];
   
    nav.title = _appName;
    [self.window addSubview:nav.view];
    [root release];
    [navBar release];
    [self.window makeKeyAndVisible];
    return YES;
    
    
    
//    UITabBarController *root = [[UITabBarController alloc]init];
//    root.delegate =self;
//    root.selectedIndex = 0;
//    root.title = @"Home";
//    //tabBar中5个选项卡视图
//    NLHomeViewController *home = [[NLHomeViewController alloc]init];
//    NLBookViewController *book = [[NLBookViewController alloc] init];
//    NSArray *arr = [[NSArray alloc] initWithObjects:home,book ,nil];
//    [home release];
//    [book release];
//    root.viewControllers = arr;
//    [arr release];

}

//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
//{
//    NSInteger index = tabBarController.selectedIndex;
//    
//    switch (index) {
//        case 0:
//             tabBarController.title = @"我的首页";
//            break;
//            
//        case 1:
//            tabBarController.title = @"豆瓣读书";
//            break;
//    }
//}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
