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

@property (nonatomic, assign) double width;
@property (nonatomic, assign) double length;
@property (nonatomic, retain) UIColor *color;

- (instancetype)initWithWidth:(double)width length:(double)lenght color:(UIColor*)color;


@end

NS_ASSUME_NONNULL_END
