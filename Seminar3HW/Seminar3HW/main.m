//
//  main.m
//  Seminar3HW
//
//  Created by MacBook Pro on 03/09/23.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] init];

        // Делаем пациента делегатом доктора
        doctor.delegate = patient;

        // Доктор делегирует пациенту выпить пилюлю
        [doctor delegatePillTakingToPatient];
    }
    return 0;
}
