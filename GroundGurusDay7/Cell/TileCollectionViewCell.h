//
//  TileCollectionViewCell.h
//  GroundGurusDay7
//
//  Created by Earth Maniebo on 05/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TileCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *albumNameLabel;

@end

NS_ASSUME_NONNULL_END
