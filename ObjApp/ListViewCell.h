//
//  ListViewCell.h
//  ObjApp
//
//  Created by shahrukh on 7/20/17.
//  Copyright © 2017 shahrukh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;


@end
