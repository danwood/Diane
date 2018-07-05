//
//  AppDelegate.h
//  Diane
//
//  Created by Dan Wood on 7/5/18.
//  Copyright © 2018 Dan Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

