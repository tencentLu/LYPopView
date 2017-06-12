//
//  LYPickerView.m
//  LYPOPVIEW
//
//  CREATED BY LUO YU ON 2017-06-12.
//  COPYRIGHT © 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import "LYPickerView.h"
#import <LYCategory/LYCategory.h>

@interface LYPickerView () {
	
	__weak UIControl *cBg;
	__weak UIView *vCont;
}

@end

@implementation LYPickerView

// MARK: - ACTION

- (void)cancelInBar:(id)sender {
	[self dismiss];
}

// MARK: - INIT

- (instancetype)initWithFrame:(CGRect)frame {
	frame = (CGRect){0, 0, WIDTH, HEIGHT};
	if (self = [super initWithFrame:frame]) {
		[self initial];
	}
	return self;
}

- (void)initial {
	
	height = 216 + 44;
	
	UIControl *ctlBg = [[UIControl alloc] initWithFrame:(CGRect){0, 0, WIDTH, HEIGHT}];
	ctlBg.backgroundColor = [UIColor colorWithHex:@"#000000" andAlpha:0.618];
	[self addSubview:ctlBg];
	cBg = ctlBg;
	
	UIView *viewCont = [[UIView alloc] initWithFrame:(CGRect){0, HEIGHT - height, WIDTH, height}];
	[ctlBg addSubview:viewCont];
	vCont = viewCont;
	
	UITabBar *tabbar = [[UITabBar alloc] initWithFrame:(CGRect){0, 0, WIDTH, 44}];
	[viewCont addSubview:tabbar];
	
	UIBarButtonItem *itemCancel = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelInBar:)];
	[tabbar setItems:@[itemCancel,]];

}

/*
// ONLY OVERRIDE drawRect: IF YOU PERFORM CUSTOM DRAWING.
// AN EMPTY IMPLEMENTATION ADVERSELY AFFECTS PERFORMANCE DURING ANIMATION.
- (void)drawRect:(CGRect)rect {
	// DRAWING CODE
}
*/

// MARK: - METHOD

- (void)show {
	
	self.frame = (CGRect){0, HEIGHT, WIDTH, height};
	self.hidden = NO;
	self.alpha = 1;
	
	if ([self superview] == nil) {
		[[UIApplication sharedApplication].keyWindow addSubview:self];
	}
	
	[UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
		self.frame = (CGRect){0, HEIGHT - height, WIDTH, height};
	} completion:^(BOOL finished) {
		
	}];
}

- (void)dismiss {
	[UIView animateWithDuration:0.25 delay:0	 options:UIViewAnimationOptionCurveEaseInOut animations:^{
		self.frame = (CGRect){0, HEIGHT, WIDTH, height};
	} completion:^(BOOL finished) {
		[self removeFromSuperview];
	}];
}

@end