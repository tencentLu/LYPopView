//
//  TabMsgViewController.m
//  LYPopView
//
//  Created by Luo Yu on 19/12/2016.
//  Copyright © 2016 LUO YU. All rights reserved.
//

#import "TabMsgViewController.h"
#import <LYPopView/LYPopView.h>

@interface TabMsgViewController () {
	
	__weak IBOutlet UITextField *tfMessage;
	__weak IBOutlet UIButton *btnShowMsg;
}

@end

@implementation TabMsgViewController

// MARK: - ACTION

- (IBAction)showMessagePop:(UIButton *)sender {
	
	// DISMISS KEYBOARD
	[self.view endEditing:YES];
	
	// SHOW MESSAGE POP VIEW
	LYPopMessage *msgpop = [[LYPopMessage alloc] init];
	msgpop.title = @"Message Pop View";
	msgpop.message = tfMessage.text;
	[msgpop show];
}

// MARK: - INIT

- (instancetype)init {
	if (self = [super initWithNibName:@"TabMsgViewController" bundle:[NSBundle mainBundle]]) {
	}
	return self;
}

// MARK: | VIEW LIFE CYCLE

- (void)viewDidLoad {
	[super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
	
	self.navigationItem.title = @"message pop view";
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
