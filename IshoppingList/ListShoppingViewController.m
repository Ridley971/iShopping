//
//  ListShoppingViewController.m
//  IshoppingList
//
//  Created by Ridley Marinette on 12/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import "ListShoppingViewController.h"
#import "CreateListShoppingViewController.h"

@interface ListShoppingViewController ()

@end

@implementation ListShoppingViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title=@"ShoppingList";
        NSMutableArray* rightButtons =[NSMutableArray new];
        
        [rightButtons addObject:[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onTouchADD)]];
        
        [rightButtons addObject:[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(onTouchEdit)]];
        
        self.navigationItem.rightBarButtonItems=rightButtons;
    }
    return self;
}
-(void)onTouchADD{
    CreateListShoppingViewController *form = [CreateListShoppingViewController new];
    
    form.delegate=self;
    [self.navigationController pushViewController:form  animated:YES];
}
-(void)onTouchEdit{}

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
