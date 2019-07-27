//
//  VCuse.m
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "VCuse.h"
#import "111.h"
#import "SJYTableViewCell.h"
#import "SJYTableViewCell2.h"
#import "MYmusic.h"

@interface VCuse ()

@property NSInteger switchint ;
@property NSInteger okint;

@end

@implementation VCuse

/*----------------跳下一界面时，显示分栏控制器--------------------*/
- (void) viewWillDisappear:(BOOL)animated {
    self.hidesBottomBarWhenPushed = NO;
}

- (void)chargeSwitch:(UISwitch *) sw{
    if (_switchint == 0) {
        _switchint = 1 ;
    }
    else {
        _switchint = 0 ;
    }
}
- (void)changeOk:(UIButton *)btn{
    [btn setImage:[UIImage imageNamed:@"ok.png"] forState:UIControlStateNormal] ;
    _okint = 1;
}


//tableview一共有多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6 ;
}

//第section组有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 1 || section == 3) {
        return 2 ;
    }
    else if (section == 0 || section == 2 || section == 4) {
        return 3 ;
    }
    else {
        return 1 ;
    }
}

//每一行显示什么内容
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section != 5 && indexPath.section != 0) {
        UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil] ;
        
        //加右边小箭头
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
        
        if (indexPath.section == 1) {
            NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"口袋铃声" , @"我的订单", nil] ;
            cell.textLabel.text = [array1 objectAtIndex:indexPath.row] ;
            
            if (indexPath.row == 1) {
                cell.imageView.image = [UIImage imageNamed:@"0.0.png"] ;
            }
            else {
                cell.imageView.image = [UIImage imageNamed:@"0.1.png"] ;
            }
        }
        else if (indexPath.section == 2) {
            NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@"设置", @"夜间模式", @"定时关闭", @"音乐闹钟", nil] ;
            cell.textLabel.text = [array2 objectAtIndex:indexPath.row] ;
            
            if (indexPath.row == 1) {
                //新建开关
                UISwitch *sw = [[UISwitch alloc]init] ;
                [sw addTarget:self action:@selector(chargeSwitch:) forControlEvents:UIControlEventValueChanged] ;
                if (_switchint == 1) {
                    sw.on = YES ;
                }
                else {
                    sw.on = NO ;
                }
                cell.accessoryView = sw;
            }
            
            NSMutableArray *array2Ima = [[NSMutableArray alloc]init] ;
            for (int i = 0; i < 4; i++) {
                NSString *strName = [NSString stringWithFormat:@"1.%d.png", i] ;
                [array2Ima addObject:strName] ;
            }
            cell.imageView.image = [UIImage imageNamed:[array2Ima objectAtIndex:indexPath.row]] ;
        }
        else if (indexPath.section == 3) {
            NSMutableArray *array3 = [NSMutableArray arrayWithObjects:@"在线听歌免流量", @"优惠卷", nil] ;
            cell.textLabel.text = [array3 objectAtIndex:indexPath.row] ;
            if (indexPath.row == 0) {
                cell.imageView.image = [UIImage imageNamed:@"2.0.png"] ;
            }
            else {
                cell.imageView.image = [UIImage imageNamed:@"2.1.png"] ;
            }
        }
        else if (indexPath.section == 4) {
            NSMutableArray *array4 = [NSMutableArray arrayWithObjects:@"加入网易音乐人", @"我要直播", @"分享网易云音乐", @"关于", nil] ;
            cell.textLabel.text = [array4 objectAtIndex:indexPath.row] ;
            
            NSMutableArray *array4Ima = [[NSMutableArray alloc]init] ;
            for (int i = 0; i < 4; i++) {
                NSString *strName = [NSString stringWithFormat:@"3.%d.png", i] ;
                [array4Ima addObject:strName] ;
            }
            cell.imageView.image = [UIImage imageNamed:[array4Ima objectAtIndex:indexPath.row]] ;
        }
        //除去点击的灰色效果
        cell.selectionStyle = UITableViewCellEditingStyleNone ;
        
        return cell ;
    }
    else if (indexPath.section == 0) {
        SJYTableViewCell *SJYCell2 = [[SJYTableViewCell alloc] init] ;
        if (indexPath.row == 0) {
            SJYTableViewCell2 *cell = [[SJYTableViewCell2 alloc] init] ;
            if (_okint == 0) {
                [cell.btn setImage:[UIImage imageNamed:@"noyet.png"] forState:UIControlStateNormal] ;
            }
            else {
                [cell.btn setImage:[UIImage imageNamed:@"ok.png"] forState:UIControlStateNormal] ;
            }
            [cell.btn addTarget:self action:@selector(changeOk:) forControlEvents:UIControlEventTouchDown] ;
            
            //去除单个单元格分割线
            cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;
            //除去点击的灰色效果
            cell.selectionStyle = UITableViewCellEditingStyleNone ;
            
            return cell ;
        }
        else if (indexPath.row == 1) {
            _11 *dongtai = [[_11 alloc] init] ;
            [dongtai.button setTitle:@"0" forState:UIControlStateNormal] ;
            dongtai.button.titleLabel.font = [UIFont systemFontOfSize:25] ;
            [dongtai.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal] ;
            dongtai.label.text = @"动态" ;
            dongtai.label.textColor = [UIColor grayColor] ;
            dongtai.label.textAlignment = NSTextAlignmentCenter ;
            
            _11 *guangzhu = [[_11 alloc] init] ;
            [guangzhu.button setTitle:@"3" forState:UIControlStateNormal] ;
            guangzhu.button.titleLabel.font = [UIFont systemFontOfSize:25] ;
            [guangzhu.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            guangzhu.label.text = @"关注" ;
            guangzhu.label.textColor = [UIColor grayColor] ;
            guangzhu.label.textAlignment = NSTextAlignmentCenter ;
            
            _11 *fengshi = [[_11 alloc] init] ;
            [fengshi.button setTitle:@"0" forState:UIControlStateNormal] ;
            fengshi.button.titleLabel.font = [UIFont systemFontOfSize:25] ;
            [fengshi.button  setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            fengshi.label.text = @"粉丝" ;
            fengshi.label.textColor = [UIColor grayColor] ;
            fengshi.label.textAlignment = NSTextAlignmentCenter ;
            
            _11 *bianji = [[_11 alloc] init] ;
            [bianji.button setImage:[UIImage imageNamed:@"bianji.png"] forState:UIControlStateNormal] ;
            bianji.label.text = @"编辑资料" ;
            bianji.label.textColor = [UIColor grayColor] ;
            bianji.label.textAlignment = NSTextAlignmentCenter ;
            
            [SJYCell2.view1 addSubview:dongtai] ;
            [SJYCell2.view2 addSubview:guangzhu] ;
            [SJYCell2.view3 addSubview:fengshi] ;
            [SJYCell2.view4 addSubview:bianji] ;
        }
        else {
            _11 *xiaoxi = [[_11 alloc] init] ;
            [xiaoxi.button setImage:[UIImage imageNamed:@"xinfeng.png"] forState:UIControlStateNormal] ;
            xiaoxi.label.text = @"消息" ;
            xiaoxi.label.textAlignment = NSTextAlignmentCenter ;
            
            _11 *shangcheng = [[_11 alloc] init] ;
            [shangcheng.button setImage:[UIImage imageNamed:@"shangcheng.png"] forState:UIControlStateNormal] ;
            shangcheng.label.text = @"商城" ;
            shangcheng.label.textAlignment = NSTextAlignmentCenter ;
            
            _11 *yanchu = [[_11 alloc] init] ;
            [yanchu.button setImage:[UIImage imageNamed:@"piao.png"] forState:UIControlStateNormal] ;
            yanchu.label.text = @"商城" ;
            yanchu.label.textAlignment = NSTextAlignmentCenter ;
            
            _11 *yifu = [[_11 alloc] init] ;
            [yifu.button setImage:[UIImage imageNamed:@"yifu.png"] forState:UIControlStateNormal] ;
            yifu.label.text = @"个性换肤" ;
            yifu.label.textAlignment = NSTextAlignmentCenter ;
            
            [SJYCell2.view1 addSubview:xiaoxi] ;
            [SJYCell2.view2 addSubview:shangcheng] ;
            [SJYCell2.view3 addSubview:yanchu] ;
            [SJYCell2.view4 addSubview:yifu] ;
        }

        //去除单个单元格分割线
        SJYCell2.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;

        //除去点击的灰色效果
        SJYCell2.selectionStyle = UITableViewCellEditingStyleNone ;
        
        return SJYCell2 ;
    }
    else {
        UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] ;
        
        cell.textLabel.text = @"退出登录" ;
        cell.textLabel.textAlignment = NSTextAlignmentCenter ;
        cell.textLabel.textColor = [UIColor redColor] ;
        
        //去除单个单元格分割线
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, _tableView.bounds.size.width) ;
        
        //除去点击的灰色效果
        cell.selectionStyle = UITableViewCellEditingStyleNone ;
        
        return cell ;
    }
}

//第section组头部显示什么标题
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"" ;
}

//第section组尾部显示什么标题
- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"" ;
}

//section头部间距
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0 ;
    }
    else {
        return 3 ;
    }
}

//section底部间距
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 5) {
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
    if (section == 5) {
        view.backgroundColor = [UIColor whiteColor];
    }
    else {
        view.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.95f alpha:1.00f];
    }
    return view ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 1 || indexPath.row == 2) {
            return 98 ;
        }
        else {
            return 75 ;
        }
    }
    else {
        return 44 ;
    }
}

- (void)pressLeft {
    
}

- (void)pressRight {
    /*----------------跳下一界面时，显示分栏控制器--------------------*/
    self.hidesBottomBarWhenPushed = YES ;
    
    MYmusic *mymusic = [[MYmusic alloc] init] ;
    
    //切换界面   NO：取消动画    不会卡页面
    [self.navigationController pushViewController:mymusic animated:YES] ;
}

//下拉出现 导航栏 标题 颜色
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.y > 65) {
        self.navigationItem.title = @"账号" ;
        //改变导航栏标题颜色
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]}] ;
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
        
    }
    else if (scrollView.contentOffset.y <= 0) {
        self.navigationItem.title = @"" ;
        self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.92f green:0.87f blue:0.87f alpha:1.00f] ;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad] ;
    // Do any additional setup after loading the view.
    
    _switchint = 0 ;
    _okint = 0;
    
/*---------------------导航栏-----------------------*/
    self.navigationItem.title = @"" ;
    //改变导航栏背景颜色
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.92f green:0.87f blue:0.87f alpha:1.00f];
    
    //设置导航栏为不透明
    self.navigationController.navigationBar.translucent = NO ;
    
    //会将最上面的电量时间的背景颜色变黑，看不见
    //self.navigationController.navigationBar.clipsToBounds = YES ;
    
    UIImage *imageLeft = [UIImage imageNamed:@"icon.png"] ;
    UIImage *imageRight = [UIImage imageNamed:@"bofang.png"] ;
    
    
    UIBarButtonItem *leftbtn = [[UIBarButtonItem alloc] initWithImage:imageLeft style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)] ;
    [leftbtn setTintColor:[UIColor redColor]] ;
    self.navigationItem.leftBarButtonItem = leftbtn ;
    
    UIBarButtonItem *rightbtn = [[UIBarButtonItem alloc] initWithImage:imageRight style:UIBarButtonItemStyleDone target:self action:@selector(pressRight)] ;
    [rightbtn setTintColor:[UIColor redColor]] ;
    self.navigationItem.rightBarButtonItem = rightbtn ;
    
    //隐藏导航栏底部分界线
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navImage"] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    
/*---------------------单元格-----------------------*/
    //创建数据视图
    //UITableViewStylePlain:普通风格
    //UITableViewStyleGrouped:分组风格
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain] ;
    
    _tableView.backgroundColor = [UIColor whiteColor] ;
    
    //解决底部遮盖问题
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth ;
    
    //设置数据视图的代理对象
    _tableView.delegate = self ;
    
    //设置数据视图的数据源对象
    _tableView.dataSource = self ;
    
    [self.view addSubview:_tableView] ;
    
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero] ;
    
}

@end
