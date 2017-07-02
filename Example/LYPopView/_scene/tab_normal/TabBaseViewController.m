//
//  TabBaseViewController.m
//  LYPopView
//
//  Created by Luo Yu on 19/12/2016.
//  Copyright © 2016 LUO YU. All rights reserved.
//

#import "TabBaseViewController.h"
#import <LYPopView/PopView.h>

@interface TabBaseViewController ()

@end

@implementation TabBaseViewController

// MARK: - ACTION

- (IBAction)showNormalPopView:(UIButton *)sender {
	
	LYPopView *popview = [[LYPopView alloc] init];
	popview.title = @"Base Pop View";
	[popview show];
}

- (IBAction)showSingleActionPopView:(UIButton *)sender {
	LYPopActionView *popview = [[LYPopActionView alloc] init];
	popview.title = @"single button pop view";
	[popview setSingleButtonTitle:@"Yes" andAction:^{
		NSLog(@"Pressed\n%@", [NSDate date]);
	}];
	[popview show];
}

- (IBAction)showDoubleActionPopView:(UIButton *)sender {
	LYPopActionView *popview = [[LYPopActionView alloc] init];
	popview.title = @"double buttons pop view";
	[popview setDoubleButtonBtnZeroTitle:@"cancel" action:^{
		NSLog(@"button 0 pressed\n%@", [NSDate date]);
	} andBtnOneTitle:@"yes" action:^{
		NSLog(@"button 1 pressed\n%@", [NSDate date]);
	}];
	[popview show];
}

// MARK: - INIT

- (instancetype)init {
	if (self = [super initWithNibName:@"TabBaseViewController" bundle:[NSBundle mainBundle]]) {
	}
	return self;
}

// MARK: | VIEW LIFE CYCLE

- (void)viewDidLoad {
	[super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
	
	self.title = @"basic pop view";
}

// MARK: | MEMORY MANAGEMENT

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// DISPOSE OF ANY RESOURCES THAT CAN BE RECREATED.
}

// MARK: - METHOD

// MARK: | PRIVATE METHOD

// MARK: - DELEGATE

// MARK: |

// MARK: - NOTIFICATION

@end
