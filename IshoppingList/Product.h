//
//  Product.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject{
@private
    NSInteger id_;
    NSString* name_;
    NSInteger* quantity_;
    double* price_;
}

@property(nonatomic, assign) NSInteger id;
@property(nonatomic, strong) NSString* name;
@property(nonatomic, assign) NSInteger* quantity;
@property(nonatomic, assign) double* price;

@end
