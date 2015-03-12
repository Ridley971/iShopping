//
//  UserViewController.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol UserViewControllerDelegate <NSObject>
@end
@interface UserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldLogin;



- (IBAction)btnConnect:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
@property(weak, nonatomic) id<UserViewControllerDelegate> delegate;
@end
