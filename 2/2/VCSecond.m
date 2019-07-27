//
//  VCSecond.m
//  2
//
//  Created by 沈君瑶 on 2019/7/24.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem * tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:nil tag:102] ;
    tabBarItem.image = [[UIImage imageNamed:@"video.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    tabBarItem.selectedImage = [[UIImage imageNamed:@"video2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    
    
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
