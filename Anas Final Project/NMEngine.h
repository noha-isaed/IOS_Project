    //
//  NMEngine.h
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import <Foundation/Foundation.h>
#import "FuelType.h"

NS_ASSUME_NONNULL_BEGIN

@interface NMEngine : NSObject {
    
}
@property (nonatomic , copy) NSString *manufacture ;
@property (nonatomic, retain) NSDate *manufactureDate;
@property (nonatomic, copy) NSString *model;
@property (nonatomic, assign) NSInteger capacity;
@property (nonatomic, assign) NSInteger cylinders;

- (instancetype)initWithManufacture:(NSString*)manufacture
     manufactureDate:(NSDate *)manufactureDate
               model:(NSString *)model
            capacity:(NSInteger)capacity
           cylinders:(NSInteger)cylinders;

@end

NS_ASSUME_NONNULL_END
