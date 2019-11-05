//
//  NestedViewController.m
//  GroundGurusDay7
//
//  Created by Earth Maniebo on 05/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "NestedViewController.h"
#import "Cells/Table/NestedTableViewCell.h"
@interface NestedViewController ()

@end

@implementation NestedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.nestedTableView registerNib:[UINib nibWithNibName:@"NestedTableViewCell" bundle:nil] forCellReuseIdentifier:@"NestedTableCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NestedTableViewCell *cell = [self.nestedTableView dequeueReusableCellWithIdentifier:@"NestedTableCell" forIndexPath:indexPath];
    
    cell.nestCollectionView.delegate = self;
    cell.nestCollectionView.dataSource = self;
    
    return cell;
}


@end
