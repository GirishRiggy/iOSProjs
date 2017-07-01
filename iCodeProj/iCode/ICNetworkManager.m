//
//  ICNetworkManager.m
//  iCode
//
//  Created by Girish K T on 13/07/16.
//  Copyright © 2016 Girish K T. All rights reserved.
//

#import "ICNetworkManager.h"

@implementation ICNetworkManager 

@synthesize networkDelegate;

- (void)makeConnectionRequest {
    
    [self didRecieveReponse];
    
}

- (void)didRecieveReponse {
    
    if ([[self networkDelegate] respondsToSelector:@selector(sendResponse:)]) {
        [self.networkDelegate sendResponse:@"Success"];
    }

}

@end
