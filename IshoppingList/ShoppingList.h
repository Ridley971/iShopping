//
//  ShoppingList.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoppingList : NSObject{
    @private
    NSInteger id_;
    NSString* name_;
    NSDate* created_date_;
    BOOL* completed_;
}

@property(nonatomic, assign) NSInteger id;
@property(nonatomic, strong) NSString* name;
@property(nonatomic, strong) NSDate* created_date;
@property(nonatomic, assign) BOOL* completed;

@end
