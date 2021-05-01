//
//  NMVehicle.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMVehicle.h"

@implementation NMVehicle

- (instancetype)initWithWidth:(double)width
                       vehicleLength:(double)lenght
                        color:(UIColor*)color
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
        [self setVehicleWidth:width];
        [self setVehicleLength:lenght];
        [self setColor:color];
    }
    return self;
}

- (instancetype) init{
    double width = 0.0;
    double length = 0.0;
    UIColor *color = nil;
    NSString *manufactureCompany = @"Tesla" ;
    NSDate *manufactureDate = nil;
    NSString *model = @"Tesla Model S";
    NMEngine *engine = nil;
    NSInteger plateNumber = 123;
    NSInteger bodySerialNumber = 1;
    
    return [self initWithWidth:width
                        vehicleLength:length
                         color:color
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
    
    double width = 0.0;
    double length = 0.0;
    UIColor *color = nil;
    
    return [self initWithWidth:width
                 vehicleLength:length
                         color:color
                   manufactureCompany:manufactureCompany
                      manufactureDate:manufactureDate
                                model:model
                               engine:engine
                          plateNumber:plateNumber
                     bodySerialNumber:bodySerialNumber
];
    
}



@synthesize vehicleWidth, vehicleLength, color;
@end
