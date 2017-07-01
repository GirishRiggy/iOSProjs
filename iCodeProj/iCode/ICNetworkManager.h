//
//  ICNetworkManager.h
//  iCode
//
//  Created by Girish K T on 13/07/16.
//  Copyright © 2016 Girish K T. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ICNetworkManager;
@protocol NetworkDelegate <NSObject>

- (void)sendResponse:(NSString *)response;

@end

@interface ICNetworkManager : NSObject

@property (nonatomic, weak) id<NetworkDelegate> networkDelegate;

- (void)makeConnectionRequest;

@end
