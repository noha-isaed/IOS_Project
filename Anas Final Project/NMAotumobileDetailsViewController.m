//
//  NMAotumobileDetailsViewController.m
//  Anas Final Project
//
//  Created by Students on 4/22/21.
//

#import "NMAotumobileDetailsViewController.h"
#import "NMCar.h"
#import "NMMotorCycle.h"
#import "NMTruck.h"

@interface NMAotumobileDetailsViewController (){
NSMutableArray *autoMobiles;
}
@end

@implementation NMAotumobileDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableString *data = [[NSMutableString alloc] init];
    
 
    if([self.currentAutomobile isKindOfClass:[NMCar class]]){

        [data appendString:@"Length"];
        [data appendString:[NSString stringWithFormat:@"%d" , [self.currentAutomobile vehicleLength]]];
        [data appendString:@"\n"];

        [data appendString:@"Manufacture Company"];
        [data appendString:[NSString stringWithFormat:@"%@", [self.currentAutomobile manufactureCompany]]];
        [data appendString:@"\n"];

        [data appendString:@"Manufacture Date"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureDate]]];
        [data appendString:@"\n"];

        [data appendString:@"Model"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile model]]];
        [data appendString:@"\n"];

        [data appendString:@"Engine"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile engine]]];
        [data appendString:@"\n"];

        [data appendString:@"Plate Number"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile plateNumber]]];
        [data appendString:@"\n"];

        [data appendString:@"Body Serial Number"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile bodySerialNumber]]];
        [data appendString:@"\n"];

        [data appendString:@"\nChair Number :"];
        [data appendString:[NSString stringWithFormat:@"%d", [self.currentAutomobile chairNumber]]];
        [data appendString:@"\n"];

        [data appendString:@"\nFurnitre Leather :"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile isFurnitreLeather]]];
        [data appendString:@"\n"];

        [data appendString:@"\nWidth :"];
        [data appendString:[NSString stringWithFormat:@"%f", [self.currentAutomobile vehicleWidth]]];
        [data appendString:@"\n"];

        [data appendString:@"\nColor :"];
        [data appendString:[NSString stringWithFormat:@"%@", [self.currentAutomobile color]]];
    }

    else if([self.currentAutomobile isKindOfClass:[NMTruck class]]){
        [data appendString:@"\nLength :"];
        [data appendString:[NSString stringWithFormat:@"%f", [ self.currentAutomobile vehicleLength]]];
        [data appendString:@"\n"];

        [data appendString:@"\nManufacture Company :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureCompany]]];
        [data appendString:@"\n"];

        [data appendString:@"\nManufacture Date :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureDate]]];
        [data appendString:@"\n"];

        [data appendString:@"\nModel :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile model]]];
        [data appendString:@"\n"];

        [data appendString:@"\nEngine :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile engine]]];
        [data appendString:@"\n"];

        [data appendString:@"\nPlate Number :"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile plateNumber]]];
        [data appendString:@"\n"];

        [data appendString:@"\nBody Serial Number :"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile bodySerialNumber]]];
        [data appendString:@"\nFree Weight :"];
        [data appendString:[NSString stringWithFormat:@"%f", [self.currentAutomobile freeWeight]]];
        [data appendString:@"\n"];

        [data appendString:@"\nFull Wight :"];
        [data appendString:[NSString stringWithFormat:@"%f", [ self.currentAutomobile fullWeight]]];
        [data appendString:@"\n"];

        [data appendString:@"\nWidth :"];
        [data appendString:[NSString stringWithFormat:@"%f", [ self.currentAutomobile vehicleWidth]]];
        [data appendString:@"\n"];

        [data appendString:@"\nColor :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile color]]];
    }


    else if([self.currentAutomobile isKindOfClass:[NMMotorCycle class]]){
        [data appendString:@"\nLength :"];
        [data appendString:[NSString stringWithFormat:@"%f", [ self.currentAutomobile motorCycleLength]]];
        [data appendString:@"\n"];

        [data appendString:@"\nManufacture Company :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureCompany]]];
        [data appendString:@"\n"];

        [data appendString:@"\nManufacture Date :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureDate]]];
        [data appendString:@"\n"];

        [data appendString:@"\nModel :"];
        [data appendString: [NSString stringWithFormat:@"%@", [self.currentAutomobile model]]];
        [data appendString:@"\n"];

        [data appendString:@"\nEngine :"];
        [data appendString:[NSString stringWithFormat:@"%@", [ self.currentAutomobile engine]]];
        [data appendString:@"\n"];

        [data appendString:@"\nPlate Number :"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile plateNumber]]];
        [data appendString:@"\n"];

        [data appendString:@"\nBody Serial Number :"];
        [data appendString:[NSString stringWithFormat:@"%d", [ self.currentAutomobile bodySerialNumber]]];
        [data appendString:@"\nTier Diameter: "];
        [data appendString:[NSString stringWithFormat:@"%f", [ self.currentAutomobile tierDiameter]]];
    }

    [self.autoMobileDetailsLabel setText:data];

}


//#pragma mark - Navigation
//
//- (NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
//    return autoMobiles.count;
//}
//
//- (UITableViewCell *) tableView: (UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//
//    cell.textLabel.text = autoMobiles[indexPath.row];
//
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    return  cell;
//}
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
