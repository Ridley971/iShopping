//
//  FormCreateUserViewController.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FormCreateUserViewControllerDelegate <NSObject>
@end
@interface FormCreateUserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldFirstName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldLastName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
@property(weak, nonatomic) id<FormCreateUserViewControllerDelegate> delegate;
- (IBAction)onTouchValidate:(id)sender;

@end
