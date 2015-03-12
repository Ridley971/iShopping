//
//  CreateProductViewController.m
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//

#import "CreateProductViewController.h"

@interface CreateProductViewController ()

@end

@implementation CreateProductViewController

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

/*- (IBAction)btnCreateProduct:(id)sender {
    dispatch_queue_t queue=dispatch_queue_create("createProduct_queue", NULL);
    dispatch_async(queue, ^{
    
    NSString* name = self.name.text;
    NSUInteger quantity = [self.quantity.text integerValue];
    double price = [self.price.text doubleValue];
        
        //Passage en paramètre des valeurs récupérées dans l'url à destination du WebService
        NSString* strUrl=[NSString stringWithFormat:@"http://appspaces.fr/esgi/shopping_list/product/create.php?name=%@&quantity=%lu&price=%f",name,(unsigned long)quantity,price];
        
        //Vérification de l'url envoyée
        NSLog(@"%@",strUrl);
        NSURL* URL=[NSURL URLWithString:strUrl];
        NSURLRequest* request= [NSURLRequest requestWithURL:URL];
        NSError* error=nil;
        NSData* data =[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
        
        if(!error){
            NSString* str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding ];
            NSLog(@"%@@",str);
        }
    });

    
    
}*/
@end
