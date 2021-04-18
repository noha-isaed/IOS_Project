//
//  NMMotorCycle.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMMotorCycle.h"

@implementation NMMotorCycle

- (instancetype)initWithTierDiameter:(double)tierDiameter
                              length:(double) length
                  manufactureCompany:(NSString*)manufactureCompany
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                              engine:(NMEngine *)engine
                         plateNumber:(NSInteger)plateNumber
                    bodySerialNumber:(NSInteger)bodySerialNumber{
    
    self = [super initWithManufactureCompany:manufactureCompany
                             manufactureDate:manufactureDate
                                       model:model
                                      engine:engine
                                 plateNumber:plateNumber
                            bodySerialNumber:bodySerialNumber];
    if(self){
        [self setLength:length] ;
        [self setTierDiameter:tierDiameter];
    }
    return self;
}

- (instancetype) init{
    double tierDiameter = 0.0;
    double length = 0.0;
    NSString *manufactureCompany = @"Tesla" ;
    NSDate *manufactureDate = nil;
    NSString *model = @"Tesla Model S";
    NMEngine *engine = nil;
    NSInteger plateNumber = 123;
    NSInteger bodySerialNumber = 1;
    
    return [self initWithTierDiameter:tierDiameter
                               length:length
                   manufactureCompany:manufactureCompany
                      manufactureDate:manufactureDate
                                model:model
                               engine:engine
                          plateNumber:plateNumber
                     bodySerialNumber:bodySerialNumber
];
}

- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany
                 manufactureDate:(NSDate *)manufactureDate
                           model:(NSString *)model
                          engine:(NMEngine *)engine
                     plateNumber:(NSInteger)plateNumber
                bodySerialNumber:(NSInteger)bodySerialNumber {
    
    return [self initWithManufactureCompany:manufactureCompany
                      manufactureDate:manufactureDate
                                model:model
                               engine:engine
                          plateNumber:plateNumber
                     bodySerialNumber:bodySerialNumber
];
    
}


@synthesize tierDiameter, length;

@end
