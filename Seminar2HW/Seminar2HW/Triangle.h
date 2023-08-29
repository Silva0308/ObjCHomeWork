//
//  Triangle.h
//  Seminar2HW
//
//  Created by MacBook Pro on 29/08/23.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure

@property (nonatomic, readwrite) CGFloat side1;
@property (nonatomic, readwrite) CGFloat side2;
@property (nonatomic, readwrite) CGFloat side3;

@end

NS_ASSUME_NONNULL_END
