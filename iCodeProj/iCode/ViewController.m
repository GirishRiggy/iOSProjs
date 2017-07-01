//
//  ViewController.m
//  iCode
//
//  Created by Girish K T on 19/06/16.
//  Copyright © 2016 Girish K T. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+Events.h"

@interface ViewController ()

- (IBAction)loginButtonAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)loginButtonAction:(id)sender {

    ICNetworkManager *ICNM = [ICNetworkManager new];
    ICNM.networkDelegate = self;
    [ICNM makeConnectionRequest];
}


@end
