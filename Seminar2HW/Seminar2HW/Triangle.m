//
//  Triangle.m
//  Seminar2HW
//
//  Created by MacBook Pro on 29/08/23.
//

#import "Triangle.h"

@implementation Triangle

-(CGFloat) calculateArea {
    CGFloat s = (self.side1 + self.side2 + self.side3) / 2;
    return sqrtf(s * (s - self.side1) * (s - self.side2) * (s - self.side3));
}
-(CGFloat) calculatePerimeter {
    return self.side1 + self.side2 + self.side3;
}

-(void) printInfo {
    NSLog(@"Triangle - Side 1: %.2f, Side 2: %.2f, Side 3: %.2f, Area: %.2f, Perimeter: %.2f", self.side1, self.side2, self.side3, [self calculateArea], [self calculatePerimeter]);
}
@end
