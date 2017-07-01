//
//  GalleryViewController.m
//  Gallery
//
//  Created by Girish K T on 01/07/17.
//  Copyright © 2017 Girish K T. All rights reserved.
//

#import "GalleryViewController.h"

@interface GalleryViewController () {
    NSString *userName;
}
@property (weak, nonatomic) IBOutlet UILabel *usrNameLbl;

@end

@implementation GalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _usrNameLbl.text = [NSString stringWithFormat:@"Welcome %@",userName];
    
}

- (void)setUserName:(NSString *)usrName {
    userName = usrName;
}


@end
