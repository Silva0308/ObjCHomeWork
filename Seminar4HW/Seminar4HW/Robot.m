//
//  Robot.m
//  Seminar4HW
//
//  Created by MacBook Pro on 06/09/23.
//

#import "Robot.h"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(RobotBlock)block {
    NSString *direction = block();
    
    if ([direction isEqualToString:@"вверх"]) {
        self.y++;
    } else if ([direction isEqualToString:@"вниз"]) {
        self.y--;
    } else if ([direction isEqualToString:@"налево"]) {
        self.x--;
    } else if ([direction isEqualToString:@"направо"]) {
        self.x++;
    } else {
        NSLog(@"Упс, кажется, туда никак!");
    }
    
    NSLog(@"Наш робот сейчас здесь: (%d, %d)", self.x, self.y);
}

@end
