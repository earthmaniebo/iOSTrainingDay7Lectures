//
//  MyAlbumViewController.m
//  GroundGurusDay7
//
//  Created by Earth Maniebo on 05/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "MyAlbumViewController.h"
#import "Cell/TileCollectionViewCell.h"

@interface MyAlbumViewController ()

@end

@implementation MyAlbumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // link collectionView and cell together
    [self.albumCollectionView registerNib:[UINib nibWithNibName:@"TileCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"TileCell"];
    [self.navigationItem setTitle:@"My Album"];
    
    // alternative way of setting delegate and data source aside from storyboard linking
//    self.albumCollectionView.delegate = self;
//    self.albumCollectionView.dataSource = self;
    
    _album = [[NSArray alloc] initWithObjects:
              @{@"photo" : @"1",
                @"name" : @"Kid",
                },
              @{@"photo" : @"2",
                @"name" : @"Bald Man",
                },
              @{@"photo" : @"3",
                @"name" : @"Asian Kid",
                },
              @{@"photo" : @"4",
                @"name" : @"Laptop Kid",
                },
              @{@"photo" : @"5",
                @"name" : @"Pizza Man",
                },
              @{@"photo" : @"6",
                @"name" : @"Photographer",
                },  
              @{@"photo" : @"7",
                @"name" : @"Mad Man",
                }, nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"count: %lu", (unsigned long)self.album.count);
    return self.album.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    TileCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TileCell" forIndexPath:indexPath];
    NSLog(@"indexPath: %lu", (unsigned long)indexPath.item);
    NSDictionary *dict = [self.album objectAtIndex:indexPath.item];
    cell.photoImageView.image = [UIImage imageNamed:dict[@"photo"]];
    cell.albumNameLabel.text = dict[@"name"];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat computedHeight = screenSize.width / 3;
    CGFloat computedWidth = screenSize.width / 3;
    return CGSizeMake(computedWidth, computedHeight);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
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
