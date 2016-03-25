//
//  Register.h
//  eBus
//
//  Created by Amalul Ahli on 3/10/16.
//  Copyright (c) 2016 Bus. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kPostURL @"http://ppl.baume.info/ebus/register.php"
#define kUsername @"username"
#define kPassword @"password"
#define kEmail @"email"

@interface Register : UIViewController{
    
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    IBOutlet UITextField *email;
    NSURLConnection *postConnection;
    
}
- (IBAction)kirim:(id)sender;

@end
