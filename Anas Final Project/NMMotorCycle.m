//
//  NMMotorCycle.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMMotorCycle.h"

@implementation NMMotorCycle

- (instancetype)initWithTierDiameter:(double)tierDiameter length:(double) length manufactureCompany:(NSString*)manufactureCompany
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                              engine:(NMEngine *)engine
                         plateNumber:(NSInteger)plateNumber
                    bodySerialNumber:(NSInteger)bodySerialNumber{
    
}

- (instancetype) init{
    double tierDiameter = 0.0;
    double length = 0.0;
    
    return [self initWithTierDiameter:(double)tierDiameter length:(double) length];
}

@end
