//
//  Patient.m
//  Seminar3HW
//
//  Created by MacBook Pro on 03/09/23.
//

#import "Patient.h"

@implementation Patient

- (void)takePill {
    NSLog(@"Пациент выпивает пилюлю");
}

- (void)patientDidTakePill {
    [self takePill];
}

@end
