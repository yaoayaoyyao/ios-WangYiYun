//
//  VCuse.h
//  2
//
//  Created by 沈君瑶 on 2019/7/25.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCuse : UIViewController
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
}
@end

NS_ASSUME_NONNULL_END
