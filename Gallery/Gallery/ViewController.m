//
//  ViewController.m
//  Gallery
//
//  Created by Girish K T on 01/07/17.
//  Copyright © 2017 Girish K T. All rights reserved.
//

#import "ViewController.h"
#import "GalleryViewController.h"

@interface ViewController ()

- (IBAction)btnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *usrNameTxtFld;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btnAction:(id)sender {
    
    GalleryViewController *gVC = [GalleryViewController new];
    [gVC setUserName:_usrNameTxtFld.text];
    
    [self presentViewController:gVC animated:YES completion:nil];
}

@end
