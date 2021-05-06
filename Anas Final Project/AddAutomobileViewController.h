//
//  AddAutomobileViewController.h
//  Anas Final Project
//
//  Created by Students on 5/6/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddAutomobileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *automobileLengthTextField;
@property (weak, nonatomic) IBOutlet UITextField *manufactureCompanyTextField;
@property (weak, nonatomic) IBOutlet UITextField *modelTextField;
@property (weak, nonatomic) IBOutlet UITextField *engineCapacityTextField;
@property (weak, nonatomic) IBOutlet UITextField *plateNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *bodeySerialNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *manufactureDateTextField;

@property (retain, nonatomic) UIPickerView *automobileType;

@property (weak, nonatomic) IBOutlet UITextField *automobileTypeTextField;


@end

NS_ASSUME_NONNULL_END
