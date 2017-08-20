//
//  BattersModel.h
//  ObjApp
//
//  Created by shahrukh on 7/21/17.
//  Copyright © 2017 shahrukh. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class  BatterModel;
@protocol BatterModel;


@interface BattersModel : JSONModel
@property (nonatomic) NSArray <BatterModel> *batter;
@end
