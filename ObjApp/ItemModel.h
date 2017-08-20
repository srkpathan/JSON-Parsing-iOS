//
//  ItemModel.h
//  ObjApp
//
//  Created by shahrukh on 7/21/17.
//  Copyright © 2017 shahrukh. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class BattersModel;
@class ToppingModel;
@protocol BattersModel;
@protocol ToppingModel;

@interface ItemModel : JSONModel
@property (nonatomic) NSString *id;
@property (nonatomic) NSString *type;
@property (nonatomic) NSString *name;
@property (nonatomic) float ppu;
@property (nonatomic) NSDictionary <BattersModel> *batters;
@property (nonatomic) NSArray <ToppingModel> *topping;
@end
