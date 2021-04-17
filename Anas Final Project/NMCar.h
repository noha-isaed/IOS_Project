//
//  NMCar.h
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface NMCar : NMVehicle{
    
}
@property (nonatomic, assign) NSInteger chairNumber;
@property (nonatomic, assign) BOOL isFurnitreLeather;

- (instancetype)initWithChairNumber:(NSInteger)chairNumber isFurnitreLeather:(BOOL)isFurnitreLeather;

@end

NS_ASSUME_NONNULL_END
