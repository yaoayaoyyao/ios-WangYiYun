//
//  SJYTableViewCell.m
//  2
//
//  Created by 沈君瑶 on 2019/7/26.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SJYTableViewCell.h"

@implementation SJYTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier] ;
    
    self.view1 = [[UIView alloc] init] ;
    [self.contentView addSubview:_view1] ;
    
    self.view2 = [[UIView alloc] init] ;
    [self.contentView addSubview:_view2] ;
    
    self.view3 = [[UIView alloc] init] ;
    [self.contentView addSubview:_view3] ;
    
    self.view4 = [[UIView alloc] init] ;
    [self.contentView addSubview:_view4] ;
    
    return self ;
}

- (void)layoutSubviews {
    [super layoutSubviews] ;
    
    _view1.frame = CGRectMake( 0, 0, 94, 98) ;
    _view2.frame = CGRectMake( 94, 0, 94, 98) ;
    _view3.frame = CGRectMake( 94 + 94, 0, 94, 98) ;
    _view4.frame = CGRectMake( 94 * 3, 0, 94, 98) ;
    
}

@end
