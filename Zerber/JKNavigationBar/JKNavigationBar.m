//
//  JKNavigationBar.m
//  Zerber
//
//  Created by n3tr on 5/10/55 BE.
//  Copyright (c) 2555 Simpletail. All rights reserved.
//

#import "JKNavigationBar.h"

@interface JKNavigationBar()
{
    UIView *bgView;
    UIColor *_bgColor;
    UIImage *_bgImage;
}

@end

@implementation JKNavigationBar

- (void)drawRect:(CGRect)rect
{
    CGRect bgRect =  CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    
    if (_bgImage) {
        // Draw Image if need
        [_bgImage drawInRect:bgRect];
    }
    else if(!_bgImage && _bgColor)
    {
        // Add background color
        bgView = [[UIView alloc] init];
        bgView.backgroundColor = _bgColor ? _bgColor : [UIColor lightGrayColor];
        bgView.alpha = 1;
        bgView.frame = bgRect;
        [bgView drawRect:bgRect];
    }
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    _bgColor = backgroundColor;
    [self setNeedsDisplay];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage
{
    _bgImage = backgroundImage;
    [self setNeedsDisplay];
}







@end
