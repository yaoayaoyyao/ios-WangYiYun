//
//  VCMy.h
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCMy : UIViewController
<
//
//
UITableViewDelegate,
//
//
UITableViewDataSource
>
{
    UITableView* _tableView ;
    UIScrollView *_scr ;
}

@end

NS_ASSUME_NONNULL_END
