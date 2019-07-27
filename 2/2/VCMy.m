//
//  VCMy.m
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCuse.h"
#import "VCMy.h"
#import "MYmusic.h"

@interface VCMy ()

@property (nonatomic, strong) UIView *topHeadBgView;

@end

@implementation VCMy



/*----------------跳下一界面时，显示分栏控制器--------------------*/
- (void) viewWillDisappear:(BOOL)animated {
    self.hidesBottomBarWhenPushed = NO;
}





- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 4 ;
    }
    else if (section == 1) {
        return 2 ;
    }
    else {
        return 4 ;
    }
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        //创建
        UITableViewCell* cellValue1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil] ;
        
        //主标题
        NSArray* arrayText = [NSArray arrayWithObjects:@"本地音乐", @"最近播放", @"我的电台", @"我的收藏", nil] ;
        cellValue1.textLabel.text = [arrayText objectAtIndex:indexPath.row] ;
        
        //副标题
        NSArray *arrayDeta = [NSArray arrayWithObjects:@"0", @"100", @"1", @"1", nil] ;
        cellValue1.detailTextLabel.text = [arrayDeta objectAtIndex:indexPath.row] ;
        
        //左边图片
        NSMutableArray *arrayImage = [[NSMutableArray alloc] init] ;
        for (int i = 0; i < 4; i++) {
            NSString *strName = [NSString stringWithFormat:@"my%d.png", i + 1] ;
            [arrayImage addObject:strName] ;
        }
        cellValue1.imageView.image = [UIImage imageNamed:[arrayImage objectAtIndex:indexPath.row]] ;
        
        //加右边小箭头
        cellValue1.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
        
        //使点击单元格不变灰
        cellValue1.selectionStyle = UITableViewCellEditingStyleNone ;
        
        return cellValue1 ;
    }
    else if (indexPath.section == 1) {
        //创建
        UITableViewCell* cellSubtitle = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil] ;
        
        //主标题
        NSMutableArray *arrayText = [NSMutableArray arrayWithObjects:@"佛系问号", @"嘎？", nil] ;
        cellSubtitle.textLabel.text = [arrayText objectAtIndex:indexPath.row] ;
        
        //副标题
        NSMutableArray *arrayDeta = [NSMutableArray arrayWithObjects:@"29首", @"48首", nil] ;
        cellSubtitle.detailTextLabel.text = [arrayDeta objectAtIndex:indexPath.row] ;
        
        //图片
        NSMutableArray *arrayImage = [[NSMutableArray alloc] init] ;
        for (int i = 1; i < 3; i++) {
            NSString *strName = [NSString stringWithFormat:@"%d.jpg", i] ;
            [arrayImage addObject:strName] ;
        }
        cellSubtitle.imageView.image = [UIImage imageNamed:[arrayImage objectAtIndex:indexPath.row]] ;
        
        //设置图片为圆角
        cellSubtitle.imageView.layer.cornerRadius = 5;
        cellSubtitle.imageView.layer.masksToBounds = YES;
        
        //使点击单元格不变灰
        cellSubtitle.selectionStyle = UITableViewCellEditingStyleNone ;
        
        //去除单个单元格分割线
        cellSubtitle.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;
        
        return cellSubtitle ;
    }
    else {
        UITableViewCell* cellSubtitle = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil] ;
        
        NSMutableArray *arrayText = [NSMutableArray arrayWithObjects:@"面对生活暴击的我", @"这种感觉也太棒了叭", @"让我看看是谁来消息了", @"GOOD" , nil] ;
        
        NSMutableArray *arrayDeta = [NSMutableArray arrayWithObjects:@"160首，by 鹿白川", @"118首，by westilfer", @"100首，by 网易云音乐", @"179首，by jayroxis" , nil] ;
        
        NSMutableArray *arrayImage = [[NSMutableArray alloc] init] ;
        
        for (int i = 3; i < 7; i++) {
            NSString *strName = [NSString stringWithFormat:@"%d.jpg",i] ;
            [arrayImage addObject:strName] ;
        }
        
        cellSubtitle.textLabel.text = [arrayText objectAtIndex:indexPath.row] ;
        cellSubtitle.detailTextLabel.text = [arrayDeta objectAtIndex:indexPath.row] ;
        cellSubtitle.imageView.image = [UIImage imageNamed:[arrayImage objectAtIndex:indexPath.row]] ;
        
        cellSubtitle.imageView.layer.cornerRadius = 5;
        cellSubtitle.imageView.layer.masksToBounds = YES;
        cellSubtitle.selectionStyle = UITableViewCellEditingStyleNone ;
        
        //去除单个单元格分割线
        cellSubtitle.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;
        
        return cellSubtitle ;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0 ;
    }
    else {
        return 3 ;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 2) {
        return 0 ;
    }
    else {
        return 3 ;
    }
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView* view = [[UIView alloc] init] ;
    view.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.95f alpha:1.00f];
    return view ;
}

- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView* view = [[UIView alloc] init] ;
    if (section == 2) {
        view.backgroundColor = [UIColor whiteColor];
    }
    else {
        view.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.95f alpha:1.00f];
    }
    return view ;
}

- (void)pressLeft {
    
}
- (void)pressRight {
    /*----------------跳下一界面时，不显示分栏控制器--------------------*/
    self.hidesBottomBarWhenPushed = YES ;
    
    MYmusic *mymusic = [[MYmusic alloc] init] ;
    
    //切换界面   NO：取消动画    不会卡页面
    [self.navigationController pushViewController:mymusic animated:YES] ;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
/*---------------------导航栏-----------------------*/
    
    self.navigationItem.title = @"我的音乐" ;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]}] ;
    //    self.title = @"我的音乐";
    
    //设置导航栏为不透明
    self.navigationController.navigationBar.translucent = NO ;
    
    //会将最上面的电量时间的背景颜色变黑，看不见
    //self.navigationController.navigationBar.clipsToBounds = YES ;
    
    //加图片
    UIImage *imageLeft = [UIImage imageNamed:@"cloud.png"] ;
    UIImage *imageRight = [UIImage imageNamed:@"bofang.png"] ;
    
    
    //左边按钮
    UIBarButtonItem *leftbtn = [[UIBarButtonItem alloc] initWithImage:imageLeft style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)] ;
    [leftbtn setTintColor:[UIColor redColor]] ;
    self.navigationItem.leftBarButtonItem = leftbtn ;
    
    //右边按钮
    UIBarButtonItem *rightbtn = [[UIBarButtonItem alloc] initWithImage:imageRight style:UIBarButtonItemStyleDone target:self action:@selector(pressRight)] ;
    [rightbtn setTintColor:[UIColor redColor]] ;
    self.navigationItem.rightBarButtonItem = rightbtn ;
    
    
    //隐藏导航栏底部分界线
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navImage"] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    
    
/*---------------------单元格-----------------------*/
    _scr = [[UIScrollView alloc] init] ;
    _scr.frame = CGRectMake(0, 0, 375, 104) ;
    _scr.contentSize = CGSizeMake(84 * 13, 104) ;
    _scr.pagingEnabled = NO ;
    _scr.showsHorizontalScrollIndicator = NO ;
    
    
    NSMutableArray *arrayTiyle = [NSMutableArray arrayWithObjects:@"每日推荐", @"我的歌单", @"排行榜", @"电台聆听", @"正在直播", @"私人FM", @"最新资料", @"Sati空间", @"私藏推荐", @"亲子频道", @"古典专场", @"跑步FM", @"驾驶模式",nil] ;
    
    
    
    for (int i = 0; i < 13; i++) {
        //创建按钮
        UIButton *btn = [[UIButton alloc] init] ;
        btn.frame = CGRectMake(84 * i, 0, 84, 104) ;

        //图片下的文字
        NSString *strNameTitle = [NSString stringWithFormat:arrayTiyle[i]] ;
        [btn setTitle:strNameTitle forState:UIControlStateNormal] ;
        btn.titleLabel.font = [UIFont systemFontOfSize:12] ;
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

        //按钮图片
        NSString *strName = [NSString stringWithFormat:@"%d.png", i + 1] ;
        UIImage *image = [UIImage imageNamed:strName] ;
        

        //让按钮的 图片 文字 和平相处
        [btn setImageEdgeInsets:UIEdgeInsetsMake(-btn.titleLabel.intrinsicContentSize.height, 10, 0, 0)];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(btn.currentImage.size.height + 50, -49, 0, 0)];
        [btn setImage:image forState:UIControlStateNormal] ;
        
        //将按钮加到滚动视图中
        [_scr addSubview:btn] ;
    }
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain] ;
    
    _tableView.dataSource = self ;
    
    _tableView.delegate = self ;
    
    [self.view addSubview:_tableView] ;
    
    _scr.backgroundColor = [UIColor whiteColor] ;
    
    _tableView.tableHeaderView = _scr;
    
    _tableView.backgroundColor = [UIColor whiteColor] ;

    //解决底部遮盖问题
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth ;
    
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero] ;
    
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
