//
//  Loader.h
//  Seminar5HW_1
//
//  Created by MacBook Pro on 10/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property (nonatomic, strong) NSURLSession *session;

- (void) performGETRequestForURL: (NSString *) stringURL
                       arguments: (NSDictionary *) arguments
                       competion: (void(^)(NSDictionary *, NSError *)) complition;
- (void) performPOSTRequestForURL: (NSString *) stringURL
                        arguments: (NSDictionary *) arguments
                        competion: (void(^)(NSDictionary *, NSError *)) complition;
@end

NS_ASSUME_NONNULL_END
