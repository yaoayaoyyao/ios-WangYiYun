//
//  111.m
//  2
//
//  Created by 沈君瑶 on 2019/7/26.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "111.h"

@implementation _11

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame: frame]) {
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_button];
        
        self.label = [[UILabel alloc] init] ;
        [self addSubview:_label] ;
    }
    return self;
}
- (void)layoutSubviews {
    _button.frame = CGRectMake(31, 15, 32, 32) ;
    _label.frame = CGRectMake(0, 15, 94, 98) ;
    _label.font = [UIFont systemFontOfSize:15] ;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
