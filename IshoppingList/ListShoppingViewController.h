//
//  ListShoppingViewController.h
//  IshoppingList
//
//  Created by Ridley Marinette on 12/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <UIKit/UIKit.h>
//Création du delagte pour pusher la listShoppingView AVEC LE PROPERTY
@protocol ListShoppingViewControllerDelegate <NSObject>
@end

@interface ListShoppingViewController : UIViewController
@property(strong, nonatomic) id<ListShoppingViewControllerDelegate> delegate;
@end
