//
//  VCFirst.m
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UITabBarItem * tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:nil tag:101] ;
    tabBarItem.image = [[UIImage imageNamed:@"find.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    tabBarItem.selectedImage = [[UIImage imageNamed:@"find2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
    
    
    
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
