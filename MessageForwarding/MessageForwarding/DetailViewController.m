//
//  EventListenerViewController.m
//  MessageForwarding
//
//  Created by Girish K T on 15/06/17.
//  Copyright © 2017 Girish K T. All rights reserved.
//

#import "DetailViewController.h"
#import "InfoViewController.h"

@interface DetailViewController () <listenerDelegate>{
    NSString *name;
}
- (IBAction)btnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtView;

@end

@implementation DetailViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)handleEvent:(NSString *)nameText {
    [self.listener handleEvent:nameText];
}

- (IBAction)btnAction:(id)sender {

    [self handleEvent:_txtView.text];
//    [self dismissViewControllerAnimated:YES completion:nil];

    [self.navigationController popViewControllerAnimated:YES];

}

@end
