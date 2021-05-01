//
//  NMTruck.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMTruck.h"

@implementation NMTruck

- (instancetype)initWithFreeWeight:(double)freeWeight
                         fullWight:(double)fullWeight
                      vehicleWidth:(double)width
                        vehicleLength:(double)length
                             color:(UIColor*)color
                       manufactureCompany:(NSString*)manufactureCompany
                          manufactureDate:(NSDate *)manufactureDate
                                    model:(NSString *)model
                                   engine:(NMEngine *)engine
                              plateNumber:(NSInteger)plateNumber
                  bodySerialNumber:(NSInteger)bodySerialNumber{
    
    self = [super initWithWidth:width
                  vehicleLength:length
                          color:color
                    manufactureCompany:manufactureCompany
                       manufactureDate:manufactureDate
                                 model:model
                                engine:engine
                           plateNumber:plateNumber
                      bodySerialNumber:bodySerialNumber];
    
    if(self){
        [self setFreeWeight:freeWeight];
        [self setFullWeight:fullWeight];
    }
    
    return self;

}

- (instancetype)init{
    double width = 0.0;
    double length = 0.0;
    UIColor *color = nil;
    NSString *manufactureCompany = @"Tesla" ;
    NSDate *manufactureDate = nil;
    NSString *model = @"Tesla Model S";
    NMEngine *engine = [[NMEngine alloc]init];
    NSInteger plateNumber = 123;
    NSInteger bodySerialNumber = 1;
    double freeWeight = 400;
    double fullWeight = 800;
    
    return [self initWithFreeWeight:freeWeight
                          fullWight:fullWeight
                       vehicleWidth:(double)width
                         vehicleLength:(double)length
                              color:color
                        manufactureCompany:manufactureCompany
                           manufactureDate:manufactureDate
                                     model:model
                                    engine:engine
                               plateNumber:plateNumber
                   bodySerialNumber:bodySerialNumber];

}

- (instancetype)initWithWidth:(double)width
                   vehicleLength:(double)length
                        color:(UIColor*)color
                  manufactureCompany:(NSString*)manufactureCompany
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                              engine:(NMEngine *)engine
                         plateNumber:(NSInteger)plateNumber
                    bodySerialNumber:(NSInteger)bodySerialNumber {
    
    double freeWeight = 400;
    double fullWeight = 800;
    
    return [self  initWithFreeWeight:freeWeight
                           fullWight:fullWeight
                        vehicleWidth:(double)width
                          vehicleLength:(double)length
                               color:color
                         manufactureCompany:manufactureCompany
                            manufactureDate:manufactureDate
                                      model:model
                                     engine:engine
                                plateNumber:plateNumber
                    bodySerialNumber:bodySerialNumber
];
    
}

@synthesize freeWeight, fullWeight;
@end
