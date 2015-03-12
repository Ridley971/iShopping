//
//  UserViewController.m
//  IshoppingList
//
//  Created by Ridley Marinette on 09/03/2015.
//  Copyright (c) 2015 Ridley Marinette. All rights reserved.
//



#import "UserViewController.h"
#import "FormCreateUserViewController.h"
//Importer la view à afficher
#import "ListShoppingViewController.h"

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
 FormCreateUserViewController *form = [FormCreateUserViewController new];
    
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



- (IBAction)btnConnect:(id)sender  {
    
    //tache asynchrone pour la connection
    dispatch_queue_t queue=dispatch_queue_create("connectUser_queue", NULL);
    dispatch_async(queue, ^{
        
        //Récupération des valeurs des textFields
        NSString* email=self.textFieldLogin.text;
        NSString* password=self.textFieldPassword.text;
        
        
        //Passage en paramètre des valeurs récupérées dans l'url à destination du WebService
        NSString* strUrl=[NSString stringWithFormat:@"http://appspaces.fr/esgi/shopping_list/account/login.php?email=%@&password=%@",email,password];
        
        //Vérification de l'url envoyé
        NSLog(@"%@",strUrl);
        NSURL* URL=[NSURL URLWithString:strUrl];
        
        //initalisation de la requête
        NSURLRequest* request= [NSURLRequest requestWithURL:URL];
        NSError* error=nil;
        
        //Exécutiion de la requête
        NSData* data =[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
        //NSLog(@"%@",data);
        if(!error){
            //Récupération de la réponse du serveur
            NSString* str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding ];
            NSLog(@"%@@",str);
            //encodage du message server et parsing en objet d'ou objectForkey
            NSData* serverResponseJSON=[str dataUsingEncoding:NSUTF8StringEncoding];
            NSDictionary* jsondict =[NSJSONSerialization JSONObjectWithData: serverResponseJSON options:0 error:&error];
            NSLog(@"%@",[jsondict objectForKey:@"code"]);
            NSLog(@"%@",[jsondict objectForKey:@"msg"]);
            NSInteger codeReturn=[[jsondict objectForKey:@"code"]integerValue];
            
            //on teste si on a reussi la connection
            if(codeReturn == 0 ){
                NSLog(@"Connecté");
                //je cree l objet qui contiendra la view a pusher
                ListShoppingViewController *form = [ListShoppingViewController new];
                //puis je call la view via deledate
                form.delegate=self;
                [self.navigationController pushViewController:form  animated:YES];
            }else{NSLog(@"NON Connecté");}
       
            
        }
    });

}
@end
