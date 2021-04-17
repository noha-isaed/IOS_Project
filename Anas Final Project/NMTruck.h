//
//  NMTruck.h
//  Anas Final Project
//
//  Created by Students on 4/17/21.
//

#import "NMVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface NMTruck : NMVehicle {
    
}

@property (assign, nonatomic) double freeWeight ;
@property (assign, nonatomic) double fullWeight ;

- (instancetype)initWithFreeWeight:(double)freeWeight fullWight:(double)fullWeight;

@end

NS_ASSUME_NONNULL_END
