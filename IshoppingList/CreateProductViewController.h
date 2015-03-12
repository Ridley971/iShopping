//
//  CreateProductViewController.h
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateProductViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *quantity;

@property (weak, nonatomic) IBOutlet UITextField *price;

- (IBAction)btnCreateProduct:(id)sender;
@end
