//
//  ToolBarView.m
//  ZhiHuDaily
//
//  Created by 洪鹏宇 on 16/2/29.
//  Copyright © 2016年 洪鹏宇. All rights reserved.
//

#import "ToolBarView.h"

@implementation ToolBarView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth/5, 43)];
        [backBtn setImage:[UIImage imageNamed:@"News_Navigation_Arrow"] forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"News_Navigation_Arrow_Highlight"] forState:UIControlStateHighlighted];
        [[backBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
            if (self.back) {
                self.back();
            }
        }];
        [self addSubview:backBtn];
        
        UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth/5,0 ,kScreenWidth/5 , 43)];
        [nextBtn setImage:[UIImage imageNamed:@"News_Navigation_Next"] forState:UIControlStateNormal];
        [nextBtn setImage:[UIImage imageNamed:@"News_Navigation_Next_Highlight"] forState:UIControlStateHighlighted];
        [[nextBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
            if (self.next) {
                self.next();
            }
        }];
        [self addSubview:nextBtn];
        
        UIButton *votedBtn = [[UIButton alloc] initWithFrame:CGRectMake((kScreenWidth/5)*2, 0 ,kScreenWidth/5 , 43)];
        [votedBtn setImage:[UIImage imageNamed:@"News_Navigation_Vote"] forState:UIControlStateNormal];
        [votedBtn setImage:[UIImage imageNamed:@"News_Navigation_Voted"] forState:UIControlStateHighlighted];
        [[votedBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {

        }];
        [self addSubview:votedBtn];
        
        UIButton *sharedBtn = [[UIButton alloc] initWithFrame:CGRectMake((kScreenWidth/5)*3, 0 ,kScreenWidth/5 , 43)];
        [sharedBtn setImage:[UIImage imageNamed:@"News_Navigation_Share"] forState:UIControlStateNormal];
        [sharedBtn setImage:[UIImage imageNamed:@"News_Navigation_Share_Highlight"] forState:UIControlStateHighlighted];
        [[sharedBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
            
        }];
        [self addSubview:sharedBtn];
        
        UIButton *commentdBtn = [[UIButton alloc] initWithFrame:CGRectMake((kScreenWidth/5)*4, 0 ,kScreenWidth/5 , 43)];
        [commentdBtn setImage:[UIImage imageNamed:@"News_Navigation_Comment"] forState:UIControlStateNormal];
        [commentdBtn setImage:[UIImage imageNamed:@"News_Navigation_Comment_Highlight"] forState:UIControlStateHighlighted];
        [[commentdBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
            
        }];
        [self addSubview:commentdBtn];
    }
    
    return self;
}

@end
