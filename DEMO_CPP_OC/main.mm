//
//  main.m
//  DEMO_CPP_OC
//
//  Created by Wiki on 16/7/6.
//  Copyright © 2016年 thejoyrun. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <iostream>
#include <list>
#include "Demo.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Objective-C(NSString) -> C++(std::string)
        NSString * ocString = @"Hello World,OC";
        std::string cppString = [ocString UTF8String];
        std::cout<<cppString<<std::endl;
        
        // C++(std::string) -> Objective-C(NSString)
        std::string  cppString2 = "Hello World,C++";
        NSString *ocString2= [NSString stringWithCString:cppString2.c_str() encoding:[NSString defaultCStringEncoding]];
        NSLog(@"%@",ocString2);
        
        
        // 面向对象------------------------------
        
        //对象创建
        Demo d1;
        Demo * d2 = new Demo;
        
        // 运算符访问
        d1.say();
        // 指针访问
        d2->say();
        
        //静态函数访问
        int result = Demo::add(1,2);
        std::cout<<"1 + 2 = "<<result<<std::endl;
        
        // list链表-----------------------------
        
        // 链表定义
        std::list<Demo> * demos = new std::list<Demo>;
        
        Demo * demo = new Demo;
        demo->name = "Wiki";
        demo->age = 24;
        
        // 在后面插入数据
        demos->push_back(*demo);
        
        demo = new Demo;
        demo->name = "Wiki2";
        demo->age = 25;
        // 在前面插入数据
        demos->push_front(*demo);
        
        // 顺序链表遍历
        for (std::list<Demo>::iterator iter = demos->begin(); iter != demos->end(); ++iter) {
            iter->say();
        }
        
        // 反顺序链表遍历
        for (std::list<Demo>::reverse_iterator iter = demos->rbegin(); iter != demos->rend(); ++iter) {
            iter->say();
        }
        
        // 获取指定位置元素
        std::list<Demo>::iterator iter = demos->begin();
        advance(iter, 1);
        iter->say();
    }
    return 0;
}
