//
//  User.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject{
@private
    NSString* firstName_;
    NSString* lastName_;
    NSString* email_;
    NSString* password_;
    
}


@property(nonatomic, strong) NSString* firstName;

@property(nonatomic, strong) NSString* lastName;

@property(nonatomic, strong) NSString* email;

@property(nonatomic, strong) NSString* password;


@end