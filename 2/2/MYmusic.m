//
//  MYmusic.m
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "MYmusic.h"
#import "VCMy.h"

@interface MYmusic ()

@end

@implementation MYmusic

- (void)pressleft {
    
    //将当前视图弹出，返回到上一级界面
    [self.navigationController popViewControllerAnimated:YES] ;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor] ;
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"左箭头.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressleft)] ;
    [leftBtn setTintColor:[UIColor redColor]] ;
    self.navigationItem.leftBarButtonItem = leftBtn ;
    
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
