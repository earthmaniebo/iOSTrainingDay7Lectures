//
//  NestedViewController.h
//  GroundGurusDay7
//
//  Created by Earth Maniebo on 05/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NestedViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *nestedTableView;

@end

NS_ASSUME_NONNULL_END
