//
//  SKStyles.m
//  SensingKit-iOS
//
//  Created by Kleomenis Katevas on 01/11/2015.
//  Copyright (c) 2015 Queen Mary University of London. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "SKStyles.h"


@implementation SKStyles

#pragma mark Cache

static UIColor* _backgroundColor = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _backgroundColor = [UIColor colorWithRed: 0.099 green: 0.564 blue: 0.809 alpha: 1];

}

#pragma mark Colors

+ (UIColor*)backgroundColor { return _backgroundColor; }

#pragma mark Drawing Methods

+ (void)drawRoundButtonFilledWithTitle: (NSString*)title
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* titleColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(3.5, 3.5, 65, 65)];
    [SKStyles.backgroundColor setFill];
    [ovalPath fill];


    //// Text Drawing
    CGRect textRect = CGRectMake(0, 25, 72, 21);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentCenter;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: titleColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [title boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [title drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRoundButtonStrokedWithTitle: (NSString*)title
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(3.5, 3.5, 65, 65)];
    [UIColor.whiteColor setFill];
    [ovalPath fill];
    [SKStyles.backgroundColor setStroke];
    ovalPath.lineWidth = 1;
    [ovalPath stroke];


    //// Text Drawing
    CGRect textRect = CGRectMake(0, 25, 72, 21);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentCenter;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: SKStyles.backgroundColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [title boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [title drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRoundButtonStrokedDeactivatedWithTitle: (NSString*)title
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* deactivatedColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.354];

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(3.5, 3.5, 65, 65)];
    [UIColor.whiteColor setFill];
    [ovalPath fill];
    [deactivatedColor setStroke];
    ovalPath.lineWidth = 1;
    [ovalPath stroke];


    //// Text Drawing
    CGRect textRect = CGRectMake(0, 25, 72, 21);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentCenter;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: deactivatedColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [title boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [title drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRoundButtonFilledDeactivatedWithTitle: (NSString*)title
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* titleColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* deactivatedColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.354];

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(3.5, 3.5, 65, 65)];
    [deactivatedColor setFill];
    [ovalPath fill];


    //// Text Drawing
    CGRect textRect = CGRectMake(0, 25, 72, 21);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentCenter;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: titleColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [title boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [title drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

@end
