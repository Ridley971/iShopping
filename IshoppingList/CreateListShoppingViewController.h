//
//  CreateListShoppingViewController.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CreateListShoppingViewControllerDelegate <NSObject>
@end
@interface CreateListShoppingViewController : UIViewController
@property(strong, nonatomic) id<CreateListShoppingViewControllerDelegate> delegate;
@end
