//
//  myButton.h
//  angryMusic
//
//  Created by ms on 15/10/1.
//  Copyright (c) 2015年 sjk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^buttonBlock) ();
typedef void(^buttonTagBlock) (int num);

@interface myButton : UIButton

@property (nonatomic,copy)buttonBlock block;

@property (nonatomic,copy)buttonTagBlock block2;

//通过block
+(myButton *)buttonWithType:(UIButtonType )type frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)color backgroundImage:(UIImage *)image andBlock:(buttonBlock)tempBlock;


/**
 *  带着按钮tag的方法
 */
//通过block
+(myButton *)buttonTagWithType:(UIButtonType )type frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)color backgroundImage:(UIImage *)image andTag:(int)tag andBlock:(buttonTagBlock)tempBlock;


@end
