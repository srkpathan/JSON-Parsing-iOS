//
//  MyModel.h
//  ObjApp
//
//  Created by shahrukh on 7/21/17.
//  Copyright © 2017 shahrukh. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class ItemModel;
@protocol ItemModel;









@interface MyModel : JSONModel
@property (nonatomic) NSArray <ItemModel> *item;
@end
