//
//  AutomobileViewController.m
//  Anas Final Project
//
//  Created by Students on 4/24/21.
//

#import "AutomobileViewController.h"

@interface AutomobileViewController() <UITableViewDelegate> {
    
}



@end

@implementation AutomobileViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NMCar *car = [[NMCar alloc] initWithChairNumber:3 isFurnitreLeather:YES width:3.0 length:5.5 color:[UIColor colorWithRed:0.2 green:0.3 blue:0.4 alpha:1] manufactureCompany:@"Tesla" manufactureDate:[NSDate date] model:@"Model S" engine:[NMEngine init] plateNumber:123456789 bodySerialNumber:999];
      
}


#pragma mark - UITableViewDelegate
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*
- (IBAction)automobileTypeSegmantControl:(id)sender {
    switch (self.automobileTypeSegmantControl.selectedSegmentIndex) {
        case 0:
        {
            
        }
            break;
            
        default:
            break;
    }
}
*/
@end
