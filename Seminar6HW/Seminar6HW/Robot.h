//
//  Robot.h
//  Seminar6HW
//
//  Created by MacBook Pro on 14/09/23.
//


#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, strong) NSString *name;

-(instancetype)initWithX:(CGFloat)x y:(CGFloat)y name:(NSString *)name;
@end


