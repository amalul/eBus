//
//  Register.m
//  eBus
//
//  Created by Amalul Ahli on 3/10/16.
//  Copyright (c) 2016 Bus. All rights reserved.
//

#import "Register.h"

@interface Register ()

@end

@implementation Register

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(void) postMessage:(NSString*) password withName:(NSString*) username withName:(NSString*) email {
    if(username != nil && password != nil && email != nil){
        NSMutableString *postString = [NSMutableString stringWithString:kPostURL];
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", kUsername, username]];
        [postString appendString:[NSString stringWithFormat:@"&%@=%@", kPassword, password]];
        [postString appendString:[NSString stringWithFormat:@"&%@=%@", kEmail, email]];
        [postString setString:[postString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:postString]];
        [request setHTTPMethod:@"POST"];
        
        postConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    }
    
}

-(IBAction)kirim:(id)sender{
    [self postMessage:password.text withName:username.text withName:email.text];
    [password resignFirstResponder];
    password.text = nil;
    username.text = nil;
    email.text = nil;

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
