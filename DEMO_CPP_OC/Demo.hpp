//
//  Demo.hpp
//  DEMO_CPP_OC
//
//  Created by Wiki on 16/7/6.
//  Copyright © 2016年 thejoyrun. All rights reserved.
//

#ifndef Demo_hpp
#define Demo_hpp

#include <stdio.h>
#include <string>

class Demo{
public:
    std::string name;
    int age = 0;
    void say();
    static int add(int param1,int param2)
    {
        return param1 + param2;
    }
};

#endif /* Demo_hpp */
