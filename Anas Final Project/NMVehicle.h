//
//  NMVehicle.h
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import <UIKit/UIKit.h>
#import "NMAutomobile.h"

NS_ASSUME_NONNULL_BEGIN

@interface NMVehicle : NMAutomobile {
    
}

@property (nonatomic, assign) double vehicleWidth;
@property (nonatomic, assign) double vehicleLength;
@property (nonatomic, retain) UIColor *color;

- (instancetype)initWithWidth:(double)width
               vehicleLength:(double)length
                        color:(UIColor*)color
                  manufactureCompany:(NSString*)manufactureCompany
                     manufactureDate:(NSDate *)manufactureDate
                               model:(NSString *)model
                              engine:(NMEngine *)engine
                  plateNumber:(NSInteger)plateNumber
                    bodySerialNumber:(NSInteger)bodySerialNumber;


@end

NS_ASSUME_NONNULL_END
