
//
//  myButton.m
//  angryMusic
//
//  Created by ms on 15/10/1.
//  Copyright (c) 2015年 sjk. All rights reserved.
//

#import "myButton.h"

@implementation myButton

//通过block
+(myButton *)buttonWithType:(UIButtonType )type frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)color backgroundImage:(UIImage *)image andBlock:(buttonBlock)tempBlock
{
    myButton *btn=[myButton buttonWithType:type];
    
    btn.frame=frame;
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    
    [btn addTarget:btn action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
    
    btn.block=tempBlock;


    return btn;
}
-(void)go
{
    _block();

}

/**
 *  带着按钮tag的方法
 */
//通过block
+(myButton *)buttonTagWithType:(UIButtonType )type frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)color backgroundImage:(UIImage *)image andTag:(int)tag andBlock:(buttonTagBlock)tempBlock {
    myButton *btn=[myButton buttonWithType:type];
    
    btn.frame=frame;
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    
    btn.tag=tag;
    
    [btn addTarget:btn action:@selector(go2:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    btn.block2=tempBlock;
    
    
    
    return btn;
    
}
-(void)go2:(UIButton *)but
{
    _block2((int)but.tag);
    
}

@end
