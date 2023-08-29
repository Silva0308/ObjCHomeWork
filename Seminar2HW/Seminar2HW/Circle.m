//
//  Circle.m
//  Seminar2HW
//
//  Created by MacBook Pro on 29/08/23.
//

#import "Circle.h"

@implementation Circle

-(CGFloat) calculateArea{
    return M_PI * (self.radius * self.radius);
}

-(CGFloat) calculatePerimeter{
    return 2 * M_PI * self.radius;
}
-(void) printInfo{
    NSLog(@"Circle - Radius: %.2f, Area: %.2f, Perimeter: %.2f", self.radius, [self calculateArea], [self calculatePerimeter]);
}
@end
