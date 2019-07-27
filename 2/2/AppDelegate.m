//
//  AppDelegate.m
//  2
//
//  Created by 沈君瑶 on 2019/7/24.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCuse.h"
#import "VCMy.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds] ;
    //显示window
    [self.window makeKeyAndVisible] ;
    
    VCFirst *vcF = [[VCFirst alloc] init] ;
    vcF.view.backgroundColor = [UIColor whiteColor] ;
    
    VCSecond *vcS = [[VCSecond alloc] init] ;
    vcS.view.backgroundColor = [UIColor whiteColor] ;
    
    VCMy *vcM = [[VCMy alloc] init] ;
    
    VCThird *vcT = [[VCThird alloc] init] ;
    vcT.view.backgroundColor = [UIColor whiteColor] ;
    
    VCuse *vcU = [[VCuse alloc] init] ;
    
    
    /*---------------------VCMy分栏控制器-----------------------*/
    
    UITabBarItem * tabBarMy = [[UITabBarItem alloc] initWithTitle:@"我的" image:nil tag:103] ;
    tabBarMy.image = [[UIImage imageNamed:@"music.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    tabBarMy.selectedImage = [[UIImage imageNamed:@"music2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    
    vcM.self.tabBarItem = tabBarMy ;
    
    
    /*---------------------VCuse分栏控制器-----------------------*/
    UITabBarItem * tabBaruse = [[UITabBarItem alloc] initWithTitle:@"账号" image:nil tag:105] ;
    tabBaruse.image = [[UIImage imageNamed:@"account.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    tabBaruse.selectedImage = [[UIImage imageNamed:@"account2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    
    
    vcU.self.tabBarItem = tabBaruse ;
    
    
    
    
    //创建导航控制器
    //导航控制器 管理 多个视图控制器 切换
    //层级的方式来管理多个视图控制器
    //参数一：用来作为导航控制器的根视图控制器
    UINavigationController* navM = [[UINavigationController alloc] initWithRootViewController:vcM] ;
    UINavigationController *navU = [[UINavigationController alloc] initWithRootViewController:vcU] ;
    
    
    UITabBarController *TBVC = [[UITabBarController alloc] init] ;
    
    NSArray *arrayVC = [NSArray arrayWithObjects:vcF, vcS, navM, vcT, navU, nil] ;
    
    TBVC.viewControllers = arrayVC ;
    
    self.window.rootViewController = TBVC ;
    
    //视图控制器的索引
    TBVC.selectedIndex = 2 ;
    
    //改变点击时的字体颜色
    TBVC.tabBar.tintColor = [UIColor redColor] ;
    
    //去除tabBar顶部横线
    TBVC.tabBar.clipsToBounds = YES ;
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
