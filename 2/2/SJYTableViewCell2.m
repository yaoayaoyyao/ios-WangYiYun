//
//  SJYTableViewCell2.m
//  2
//
//  Created by 沈君瑶 on 2019/7/26.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SJYTableViewCell2.h"

@implementation SJYTableViewCell2

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier] ;
    
    self.headBtn = [[UIButton alloc] init] ;
    [self.contentView addSubview:_headBtn] ;
    
    self.lvBtn = [[UIButton alloc] init] ;
    [self.contentView addSubview:_lvBtn] ;
    
    self.name = [[UILabel alloc] init] ;
    [self.contentView addSubview:_name] ;
    
    self.btn = [[UIButton alloc] init];
    [self.contentView addSubview:_btn] ;
    
    return self ;
}

- (void)layoutSubviews {
    [super layoutSubviews] ;
    
    _headBtn.backgroundColor = [UIColor colorWithRed:0.84f green:0.84f blue:0.85f alpha:1.00f];
    _headBtn.frame = CGRectMake(15, 15, 60, 60) ;
    [_headBtn setTitle:@"上传头像" forState:UIControlStateNormal] ;
    [_headBtn setTintColor:[UIColor whiteColor]] ;
    _headBtn.titleLabel.textAlignment = NSTextAlignmentCenter ;
    _headBtn.titleLabel.numberOfLines = 0 ;
    _headBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:17] ;
    //设置按钮为圆角
    _headBtn.layer.cornerRadius = 30 ;
    _headBtn.layer.masksToBounds = YES ;
    
    [_lvBtn setImage:[UIImage imageNamed:@"lv6.png"] forState:UIControlStateNormal] ;
    _lvBtn.frame = CGRectMake(88, 50, 40, 18) ;
    
    _name.text = @"用户名";
    _name.font = [UIFont systemFontOfSize:20] ;
    _name.frame = CGRectMake(85, 20, 70, 25) ;
    
    _btn.frame = CGRectMake(313, 25, 32, 32) ;
    
}



@end
