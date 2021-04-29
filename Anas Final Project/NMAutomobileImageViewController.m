//
//  NMAutomobileImageViewController.m
//  Anas Final Project
//
//  Created by Students on 4/22/21.
//

#import "NMAutomobileImageViewController.h"

@interface NMAutomobileImageViewController ()

@end

@implementation NMAutomobileImageViewController

@synthesize currentAutomobile;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.automobileImageView setImage:[UIImage imageNamed: [currentAutomobile manufactureCompany]]];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NMAotumobileDetailsViewController *autoMobileDetails = [segue destinationViewController];
    [autoMobileDetails setCurrentAutomobile:self.currentAutomobile];
}


@end
