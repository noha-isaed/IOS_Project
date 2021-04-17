//
//  NMEngine.m
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMEngine.h"

@implementation NMEngine

- (instancetype)initWithManufacture:(NSString*)manufacture
     manufactureDate:(NSDate *)manufactureDate
               model:(NSString *)model
            capacity:(NSInteger)capacity
                cylinders:(NSInteger)cylinders{
    self = [super init];
    if(self){
        [self setManufacture: manufacture];
        [self setManufactureDate: manufactureDate];
        [self setModel: model];
        [self setCapacity: capacity];
        [self setCylinders: cylinders];

    }
    return self;
}

- (instancetype) init{
    NSString *manufacture = @"Tesla" ;
    NSDate *manufactureDate = nil;
    NSString *model = @"Tesla Model S";
    NSInteger capacity = 0;
    NSInteger cylinders = 0;
    
    return [self initWithManufacture:(NSString*)manufacture
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                            capacity:(NSInteger)capacity
                                cylinders:(NSInteger)cylinders];
}

@end
