//
//  Doctor.h
//  Seminar3HW
//
//  Created by MacBook Pro on 03/09/23.
//

#import <Foundation/Foundation.h>

// Объявление протокола делегата

@protocol DoctorDelegate <NSObject>

// Метод делегата для выполнения действия

- (void)patientDidTakePill;

@end

@interface Doctor : NSObject

@property (nonatomic, weak) id<DoctorDelegate> delegate;

// Метод, в котором доктор делегирует пациенту действие

- (void)delegatePillTakingToPatient;

@end
