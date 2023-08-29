//
//  Retangle.m
//  Seminar2HW
//
//  Created by MacBook Pro on 29/08/23.
//

#import "Rectangle.h"

@implementation Rectangle

- (CGFloat)calculateArea {
    return self.width * self.height;
}

- (CGFloat)calculatePerimeter {
    return 2 * (self.width + self.height);
}

- (void)displayInfo {
    NSLog(@"Rectangle - Width: %.2f, Height: %.2f, Area: %.2f, Perimeter: %.2f", self.width, self.height, [self calculateArea], [self calculatePerimeter]);
    }
@end
