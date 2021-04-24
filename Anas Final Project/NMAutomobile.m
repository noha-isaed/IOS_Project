//
//  NMAutomobile.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMAutomobile.h"

@implementation NMAutomobile


- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany
                 manufactureDate:(NSDate *)manufactureDate
                           model:(NSString *)model
                          engine:(NMEngine *)engine
                     plateNumber:(NSInteger)plateNumber
                bodySerialNumber:(NSInteger)bodySerialNumber {
    self = [super init];
    
    if(self) {
        [self setManufactureCompany: manufactureCompany];
        [self setManufactureDate: manufactureDate] ;
        [self setModel : model] ;
        [self setEngine :engine];
        [self setPlateNumber:plateNumber];
        [self setBodySerialNumber:bodySerialNumber];
    }
    return self;
}

- (instancetype) init {
    
    NMEngine *defaultEngine = [[NMEngine alloc] init];
    
    NSString *manufactureCompany = @"Tesla" ;
    NSDate *manufactureDate = nil;
    NSString *model = @"Tesla Model S";
    NMEngine *engine = defaultEngine;
    NSInteger plateNumber = 123;
    NSInteger bodySerialNumber = 1;
    
    return [self initWithManufactureCompany:manufactureCompany
                            manufactureDate:manufactureDate
                                      model:model
                                     engine:engine
                                plateNumber:plateNumber
                           bodySerialNumber:bodySerialNumber];
}


@end
