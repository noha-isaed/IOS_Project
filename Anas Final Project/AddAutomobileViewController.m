//
//  AddAutomobileViewController.m
//  Anas Final Project
//
//  Created by Students on 5/6/21.
//

#import "AddAutomobileViewController.h"

@interface AddAutomobileViewController () <UIPickerViewDelegate, UIPickerViewDataSource> 
{
    NSMutableArray *data;
    NSMutableArray *typeOfAutoMobile;
}
@end

@implementation AddAutomobileViewController

@synthesize automobileLengthTextField
, manufactureCompanyTextField
, modelTextField
, engineCapacityTextField
, plateNumberTextField
, bodeySerialNumberTextField
, manufactureDateTextField
, automobileType
, automobileTypeTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    automobileType = [[UIPickerView alloc] init];
    // Do any additional setup after loading the view.
    typeOfAutoMobile = [NSMutableArray arrayWithObjects:@"Car", @"Truck", @"MotorCycle", nil];
    
    [data addObject: self.automobileLengthTextField.text];
    [data addObject: self.manufactureCompanyTextField.text];
    [data addObject: self.modelTextField.text];
    [data addObject: self.engineCapacityTextField.text];
    [data addObject: self.plateNumberTextField.text];
    [data addObject: self.bodeySerialNumberTextField.text];
    [data addObject: self.manufactureDateTextField.text];
    
    automobileType.delegate = self;
    automobileType.dataSource = self;

    automobileTypeTextField.inputView = automobileType;
}


#pragma mark - Navigation

- (NSInteger) numberOfComponentsInPickerView: (UIPickerView *)thePickerView{
    return 1;
}

- (NSInteger) pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

- (NSString *)pickerView: (UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [typeOfAutoMobile objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self.automobileTypeTextField setText: [typeOfAutoMobile objectAtIndex:row]];
}

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//     Get the new view controller using [segue destinationViewController].
//     Pass the selected object to the new view controller.
}
*/


@end
