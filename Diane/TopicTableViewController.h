//
//  SecondViewController.h
//  Tabber
//
//  Created by Dan Wood on 7/9/18.
//  Copyright © 2018 Dan Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Diane+CoreDataModel.h"

#import "EditableListViewController.h"

@interface TopicTableViewController : EditableListViewController  <NSFetchedResultsControllerDelegate, UITextFieldDelegate>

@property (strong, nonatomic) NSFetchedResultsController<Topic *> *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@property (strong, nonatomic) UIAlertAction *okAction;
@end

