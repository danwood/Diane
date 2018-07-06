//
//  DetailViewController.h
//  Diane
//
//  Created by Dan Wood on 7/5/18.
//  Copyright © 2018 Dan Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diane+CoreDataModel.h"

@interface DetailViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) Note *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextView *detailText;

@end

