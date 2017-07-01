//
//  EventListenerViewController.h
//  MessageForwarding
//
//  Created by Girish K T on 15/06/17.
//  Copyright © 2017 Girish K T. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol listenerDelegate <NSObject>

@required
-(void)handleEvent:(NSString *)name;

@end

@interface DetailViewController : UIViewController

@property(weak) id<listenerDelegate> listener;

@end
