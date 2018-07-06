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
		self.detailDescriptionLabel.text = self.detailItem.creationDate.description;
		self.detailText.text = self.detailItem.text;
		
		self.detailText.delegate = self;
	}
}

- (void)textViewDidChange:(UITextView *)textView;
{
	self.detailItem.text = self.detailText.text;
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