//
//  DetailViewController.m
//  Diane
//
//  Created by Dan Wood on 7/5/18.
//  Copyright © 2018 Dan Wood. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
	// Update the user interface for the detail item.
	if (self.detailItem) {
		self.detailText.text = self.detailItem.text;
		self.detailText.delegate = self;
		self.datePicker.date = self.detailItem.pinnedDate ? self.detailItem.pinnedDate : self.detailItem.creationDate;
	}
}

- (void)textViewDidChange:(UITextView *)textView;
{
	self.detailItem.text = self.detailText.text;	// sends changes back to detail item but doesn't save
}

- (IBAction)dateChanged:(id)sender;
{
	self.detailItem.pinnedDate = ((UIDatePicker *)sender).date;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self configureView];
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(Note *)newDetailItem {
	if (_detailItem != newDetailItem) {
	    _detailItem = newDetailItem;
	    
	    // Update the view.
	    [self configureView];
	}
}


@end
