//
//  NMMotorCycle.h
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import <UIKit/UIKit.h>
#import "NMAutomobile.h"

NS_ASSUME_NONNULL_BEGIN

@interface NMMotorCycle : NMAutomobile {
    
}

@property (nonatomic, assign) double tierDiameter;
@property (nonatomic, assign) double length;

- (instancetype)initWithTierDiameter:(double)tierDiameter
                              length:(double) length
                  manufactureCompany:(NSString*)manufactureCompany
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                              engine:(NMEngine *)engine
                         plateNumber:(NSInteger)plateNumber
                    bodySerialNumber:(NSInteger)bodySerialNumber;

@end

NS_ASSUME_NONNULL_END
