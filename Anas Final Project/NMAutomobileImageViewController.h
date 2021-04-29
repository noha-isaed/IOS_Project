//
//  NMAutomobileImageViewController.h
//  Anas Final Project
//
//  Created by Students on 4/22/21.
//

#import <UIKit/UIKit.h>
#import "NMAutomobile.h"
#import "NMAotumobileDetailsViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface NMAutomobileImageViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *automobileImageView;
@property (weak, nonatomic) id currentAutomobile;

@end


NS_ASSUME_NONNULL_END
