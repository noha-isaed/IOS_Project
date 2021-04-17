//
//  NMAutomobile.h
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import <Foundation/Foundation.h>
#import "NMEngine.h"
#import "GearType.h"

NS_ASSUME_NONNULL_BEGIN

@interface NMAutomobile : NSObject {
    
}
@property (nonatomic, copy) NSString *manufactureCompany;
@property (nonatomic, retain) NSDate *manufactureDate;
@property (nonatomic, copy) NSString *model;
@property (nonatomic, retain) NMEngine *engine;
@property (nonatomic, assign) NSInteger plateNumber;
@property (nonatomic, assign) NSInteger bodySerialNumber;

- (instancetype)initWithManufactureCompany:(NSString*)manufactureCompany
                 manufactureDate:(NSDate *)manufactureDate
                           model:(NSString *)model
                          engine:(NMEngine *)engine
                     plateNumber:(NSInteger)plateNumber
                bodySerialNumber:(NSInteger)bodySerialNumber;

@end

NS_ASSUME_NONNULL_END
