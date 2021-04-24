//
//  NMCar.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMCar.h"

@implementation NMCar

- (instancetype)initWithChairNumber:(NSInteger)chairNumber
                  isFurnitreLeather:(BOOL)isFurnitreLeather
                              width:(double)width
                             length:(double)length
                              color:(UIColor*)color
                        manufactureCompany:(NSString*)manufactureCompany
                           manufactureDate:(NSDate *)manufactureDate
                                     model:(NSString *)model
                                    engine:(NMEngine *)engine
                               plateNumber:(NSInteger)plateNumber
                   bodySerialNumber:(NSInteger)bodySerialNumber{
    
    self = [super initWithWidth:width
                         length:length
                          color:color
                    manufactureCompany:manufactureCompany
                       manufactureDate:manufactureDate
                                 model:model
                                engine:engine
                           plateNumber:plateNumber
                      bodySerialNumber:bodySerialNumber];
    
    if(self){
        [self setChairNumber:chairNumber];
        [self setIsFurnitreLeather: isFurnitreLeather];
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
    NSInteger chairNumber = 4;
    BOOL isFurnitreLeather = NO;
    
    return [self initWithChairNumber:chairNumber
                   isFurnitreLeather:isFurnitreLeather
                               width:width
                              length:length
                               color:color
                         manufactureCompany:manufactureCompany
                            manufactureDate:manufactureDate
                                      model:model
                                     engine:engine
                                plateNumber:plateNumber
                    bodySerialNumber:bodySerialNumber];

}

- (instancetype)initWithWidth:(double)width
                       length:(double)length
                        color:(UIColor*)color
                  manufactureCompany:(NSString*)manufactureCompany
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                              engine:(NMEngine *)engine
                         plateNumber:(NSInteger)plateNumber
                    bodySerialNumber:(NSInteger)bodySerialNumber {
    
    NSInteger chairNumber = 4;
    BOOL isFurnitreLeather = NO;
    
    return [self initWithChairNumber:chairNumber
                   isFurnitreLeather:isFurnitreLeather
                               width:width
                              length:length
                               color:color
                         manufactureCompany:manufactureCompany
                            manufactureDate:manufactureDate
                                      model:model
                                     engine:engine
                                plateNumber:plateNumber
                    bodySerialNumber:bodySerialNumber
];
    
}

@synthesize chairNumber, isFurnitreLeather;
@end
