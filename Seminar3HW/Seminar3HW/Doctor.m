//
//  Doctor.m
//  Seminar3HW
//
//  Created by MacBook Pro on 03/09/23.
//

#import "Doctor.h"

@implementation Doctor

- (void)delegatePillTakingToPatient {
    if ([self.delegate respondsToSelector:@selector(patientDidTakePill)]) {
        
        // Вызываем метод делегата для выполнения действия
        
        [self.delegate patientDidTakePill];
    }
}

@end

