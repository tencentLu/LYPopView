//
//  LYDropDown.h
//  LYPopView
//
//  CREATED BY LUO YU ON 2018-05-02.
//  COPYRIGHT © 2016-2019 LUO YU <indie.luo@gmail.com>. ALL RIGHTS RESERVED.
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

#import <UIKit/UIKit.h>


@interface LYDropDown : UIView

/**
 menu instance

 @return instance
 */
+ (LYDropDown *)menu;

/**
 initial method
 */
- (void)initial;

/**
 show from rectangle area

 @param rect rectangle area
 */
- (void)showFrom:(CGRect)rect;

- (void)addItemTitle:(NSString *)title action:(void (^)(NSUInteger index, NSString *title))itemAction;

/**
 dismiss drop down menu
 */
- (void)dismiss;

- (void)selectItemAtIndex:(NSUInteger)index;

@end
