//
//  ViewController.m
//  ObjApp
//
//  Created by shahrukh on 7/20/17.
//  Copyright © 2017 shahrukh. All rights reserved.
//

#import "ViewController.h"
#import "MyModel.h"
#import "ListViewCell.h"
#import "NSTEasyJSON.h"

@interface ViewController ()
{
    NSMutableArray *itemType;
    NSMutableArray *itemName;
    NSMutableArray *itemPrice;
    NSMutableArray *itemArray;
    MyModel *model;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"MyJson.json"];
    //NSString *jsonString = @"{\"id\": 10, \"country\": \"Germany\", \"dialCode\": 49, \"isInEurope\": true}";
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"MyJson" ofType:@"json"];
    NSData *content = [[NSData alloc] initWithContentsOfFile:filePath];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:content options:kNilOptions error:nil];
    
    NSLog(@"content == %@",content);
    NSLog(@"dict == %@",dict);
    
    /*
    NSError *error;
    model = [[MyModel alloc] initWithDictionary:json error:&error];
    */
    
    itemType = [[NSMutableArray alloc]init];
    itemName = [[NSMutableArray alloc]init];
    itemPrice = [[NSMutableArray alloc]init];
    
    NSTEasyJSON *json = [NSTEasyJSON withData:content];
    NSLog(@"data == %@",json);
    
    itemArray = json[@"item"].arrayValue;
    NSLog(@"itemArray == %lu",(unsigned long)itemArray.count);
    
    for (int i = 0; i < itemArray.count; i++) {
        
        NSString *type = json[@"item"][i][@"type"].stringValue;
        [itemType addObject:type];
        NSLog(@"type == %@",type);
        
        NSString *name = json[@"item"][i][@"name"].stringValue;
        [itemName addObject:name];
        NSLog(@"name == %@",name);
        
        float price = json[@"item"][i][@"ppu"].floatValue;
        [itemPrice addObject:[NSString stringWithFormat:@"%.02f",price]];
        NSLog(@"price == %f",price);
    }
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ListViewCell *cell = [_myTableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.typeLabel.text = [itemType objectAtIndex:indexPath.row];
    cell.nameLabel.text = [itemName objectAtIndex:indexPath.row];
    cell.priceLabel.text = [itemPrice objectAtIndex:indexPath.row];
    
    [cell.nameLabel sizeToFit];
    
    return cell;
    
}





@end
