//
//  FormCreateUserViewController.m
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import "FormCreateUserViewController.h"
#import "UserViewController.h"

@interface FormCreateUserViewController ()

@end

@implementation FormCreateUserViewController

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

- (IBAction)onTouchValidate:(id)sender {
    dispatch_queue_t queue=dispatch_queue_create("createUser_queue", NULL);
    dispatch_async(queue, ^{
        
        //Récupération des valeurs des textFields
        NSString* email=self.textFieldEmail.text;
        NSString* password=self.textFieldPassword.text;
        NSString* firstName=self.textFieldFirstName.text;
        NSString* lastName=self.textFieldLastName.text;
        
        //Passage en paramètre des valeurs récupérées dans l'url à destination du WebService
        NSString* strUrl=[NSString stringWithFormat:@"http://appspaces.fr/esgi/shopping_list/account/subscribe.php?email=%@&password=%@&firstname=%@&lastname=%@",email,password,firstName,lastName];
        
        //Vérification de l'url envoyé
        //NSLog(@"%@",strUrl);
        NSURL* URL=[NSURL URLWithString:strUrl];
        NSURLRequest* request= [NSURLRequest requestWithURL:URL];
        NSError* error=nil;
        NSData* data =[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
        
        if(!error){
            NSString* str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding ];
            NSLog(@"%@@",str);
            
            
            NSData* serverResponseJSON=[str dataUsingEncoding:NSUTF8StringEncoding];
            NSDictionary* jsondict =[NSJSONSerialization JSONObjectWithData: serverResponseJSON options:0 error:&error];
            
            NSLog(@"%@",[jsondict objectForKey:@"code"]);
            NSLog(@"%@",[jsondict objectForKey:@"msg"]);
            
            if([jsondict objectForKey:@"code"]==0){
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SUCCESS"
                                                                message:[jsondict objectForKey:@"msg"]
                                                               delegate:nil
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
                [alert show];
                
                UserViewController* form = [UserViewController new];
                
                form.delegate=self;
                [self.navigationController pushViewController:form  animated:YES];
            }
          
        }
    });
   
}
@end
