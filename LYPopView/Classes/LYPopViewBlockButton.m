//
//	LYPopViewBlockButton.m
//	LYPOPVIEW
//
//	CREATED BY LUO YU ON 2019/07/09.
//	COPYRIGHT © 2016-2019 LUO YU <indie.luo@gmail.com>. ALL RIGHTS RESERVED.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights
//	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//	copies of the Software, and to permit persons to whom the Software is
//	furnished to do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in
//	all copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//	THE SOFTWARE.
//

#import "LYPopViewBlockButton.h"
#import <LYCategory/LYCategory.h>


@interface LYPopViewBlockButton () {
	LYCCompletion blockAction;
}
@end

@implementation LYPopViewBlockButton

- (void)buttonActionTriggered:(id)sender {
	if (blockAction != nil) {
		blockAction();
	} else {
		NSLog(@"BLOCK NOT FOUND");
	}
}

- (void)handleEvent:(UIControlEvents)event withAction:(void (^)(void))action {
	blockAction = action;
	[self addTarget:self action:@selector(buttonActionTriggered:) forControlEvents:event];
}

@end
