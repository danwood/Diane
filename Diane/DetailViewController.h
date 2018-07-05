//
//  DetailViewController.h
//  Diane
//
//  Created by Dan Wood on 7/5/18.
//  Copyright © 2018 Dan Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diane+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

