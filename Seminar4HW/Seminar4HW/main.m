//
//  main.m
//  Seminar4HW
//
//  Created by MacBook Pro on 06/09/23.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];

        [robot run:^NSString * {
            return @"вверх";
        }];

        [robot run:^NSString * {
            return @"направо";
        }];
        
        [robot run:^NSString * {
            return @"направо";
        }];
        
        [robot run:^NSString * {
            return @"мимо";
        }];

    }
    return 0;
}
