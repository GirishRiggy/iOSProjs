//
//  ViewController.m
//  TextSelection
//
//  Created by Girish K T on 24/06/17.
//  Copyright © 2017 Girish K T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *testWebview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _testWebview.delegate = self;
    NSString *str =@"\nEgestas rhoncus auctor ac. Risus parturient, mid ultrices nisi.\nAugue ac elementum duis aliquet dolor elementum cum?\nTristique, augue sit lorem adipiscing dis! \nNunc nunc ultricies pellentesque dis dictumst enim";
    [_testWebview loadHTMLString:str baseURL:nil];
    
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

@end
