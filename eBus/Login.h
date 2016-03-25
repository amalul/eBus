//
//  Login.h
//  eBus
//
//  Created by Amalul Ahli on 3/10/16.
//  Copyright (c) 2016 Bus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Login : UIViewController{
    IBOutlet UITextField *txtUsername;
    IBOutlet UITextField *txtPassword;
    NSURLConnection *postConnection;
}

- (IBAction)signinClicked:(id)sender;
- (IBAction)back:(id)sender;

@end
