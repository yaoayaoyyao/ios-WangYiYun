//
//  VCThird.m
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UITabBarItem * tabBarItem = [[UITabBarItem alloc] initWithTitle:@"朋友" image:nil tag:104] ;
    tabBarItem.image = [[UIImage imageNamed:@"friends.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    tabBarItem.selectedImage = [[UIImage imageNamed:@"friends2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    
    
    self.tabBarItem = tabBarItem ;
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
