//
//  Robot.h
//  Seminar4HW
//
//  Created by MacBook Pro on 06/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString* _Nonnull (^RobotBlock)(void);


@interface Robot : NSObject

@property int x;
@property int y;

- (void)run:(RobotBlock)block;

@end

NS_ASSUME_NONNULL_END
