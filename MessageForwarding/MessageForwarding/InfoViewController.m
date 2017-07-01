//
//  EventViewController.m
//  MessageForwarding
//
//  Created by Girish K T on 15/06/17.
//  Copyright © 2017 Girish K T. All rights reserved.
//

#import "InfoViewController.h"
#import "DetailViewController.h"

@interface InfoViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)buttonAction:(id)sender;

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _nameLabel.hidden = YES;
}

-(void)handleEvent:(NSString *)name {
    _nameLabel.hidden = NO;
    [_nameLabel setText:[NSString stringWithFormat:@"Welcome %@",name]];
}

- (IBAction)buttonAction:(id)sender {

    DetailViewController *detail = [DetailViewController new];
    detail.listener = self;
    
//    [self presentViewController:detail animated:YES completion:nil];
    [self.navigationController pushViewController:detail animated:YES];
}


@end
