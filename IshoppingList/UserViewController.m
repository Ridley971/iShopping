//
//  UserViewController.m
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import "UserViewController.h"
#import "FormCreateUserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title=@"Login";
        NSMutableArray* rightButtons =[NSMutableArray new];
        
        [rightButtons addObject:[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onTouchADD)]];
        
        self.navigationItem.rightBarButtonItems=rightButtons;
    }
    return self;
}

-(void)onTouchADD{
 FormCreateUserViewController* form = [FormCreateUserViewController new];
    
    form.delegate=self;
    [self.navigationController pushViewController:form  animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
