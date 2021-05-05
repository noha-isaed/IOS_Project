//
//  AutomobileDetailsTableViewController.m
//  Anas Final Project
//
//  Created by Students on 5/5/21.
//

#import "AutomobileDetailsTableViewController.h"
#import "NMCar.h"
#import "NMMotorCycle.h"
#import "NMTruck.h"

@interface AutomobileDetailsTableViewController ()
{
NSMutableArray *data;
    
NSMutableArray *labels;

}

@end


@implementation AutomobileDetailsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    data = [[NSMutableArray alloc] init];
    labels = [[NSMutableArray alloc] init];

       if([self.currentAutomobile isKindOfClass:[NMCar class]]){

           [labels addObject: @"Vehicle Length"];
           [data  addObject:[[NSNumber alloc] initWithDouble:[self.currentAutomobile vehicleLength]]];

           [labels addObject: @"Vehicle Width"];
          [data  addObject: [[NSNumber alloc] initWithDouble:[self.currentAutomobile vehicleWidth]]];

           [labels addObject: @"Manufacture Company"];
           [data  addObject: [self.currentAutomobile manufactureCompany]];

           [labels addObject: @"Model"];
           [data  addObject: [ self.currentAutomobile model]];

           [labels addObject: @"Manufacture Date"];
           NSString *date = [NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureDate]];
           [data  addObject: date];

           [labels addObject: @"Engine Capacity"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[[ self.currentAutomobile engine] capacity]]];

           [labels addObject: @"Plate Number"];
          [data  addObject: [[NSNumber alloc] initWithInteger:[self.currentAutomobile plateNumber]]];

           [labels addObject: @"Body Serial Number"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[ self.currentAutomobile bodySerialNumber]]];

           [labels addObject: @"Chair Number"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[self.currentAutomobile chairNumber]]];

           [labels addObject: @"Is Furnitre Leather"];
            [data  addObject: [[NSNumber alloc] initWithBool:[ self.currentAutomobile isFurnitreLeather]]];


//           NSString *color = [NSString stringWithFormat:@"", [self.currentAutomobile color]] ;
//           [data  addObject: [self.currentAutomobile color]];
       }

       else if([self.currentAutomobile isKindOfClass:[NMTruck class]]){
           
           [labels addObject: @"Vehicle Length"];
           [data  addObject:[[NSNumber alloc] initWithDouble:[self.currentAutomobile vehicleLength]]];

           [labels addObject: @"Vehicle Width"];
          [data  addObject: [[NSNumber alloc] initWithDouble:[self.currentAutomobile vehicleWidth]]];

           [labels addObject: @"Manufacture Company"];
           [data  addObject: [ self.currentAutomobile manufactureCompany]];

           [labels addObject: @"Model"];
           [data  addObject: [ self.currentAutomobile model]];

           
           [labels addObject: @"Manufacture Date"];
           NSString *date = [NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureDate]];
           [data  addObject: date];


           [labels addObject: @"Engine Capacity"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[[ self.currentAutomobile engine] capacity]]];

           [labels addObject: @"Plate Number"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[self.currentAutomobile plateNumber]]];

           [labels addObject: @"Body Serial Number"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[ self.currentAutomobile bodySerialNumber]]];

           [labels addObject: @"Free Weight"];
           [data  addObject: [[NSNumber alloc] initWithDouble:[self.currentAutomobile freeWeight]]];

           [labels addObject: @"Full Weight"];
            [data  addObject: [[NSNumber alloc] initWithDouble:[ self.currentAutomobile fullWeight]]];
           
//           [data  addObject:[ self.currentAutomobile color]];
       }


       else if([self.currentAutomobile isKindOfClass:[NMMotorCycle class]]){
           
           [labels addObject: @"MotorCycle Length"];
           [data  addObject: [[NSNumber alloc] initWithDouble:[ self.currentAutomobile motorCycleLength]]];

           [labels addObject: @"Tier Diameter"];
           [data  addObject: [[NSNumber alloc] initWithDouble:[ self.currentAutomobile tierDiameter]]];


           [labels addObject: @"Manufacture Company"];
           [data  addObject: [ self.currentAutomobile manufactureCompany]];

           
           [labels addObject: @"Model"];
           [data  addObject: [self.currentAutomobile model]];

           
           [labels addObject: @"Manufacture Date"];
           NSString *date = [NSString stringWithFormat:@"%@", [ self.currentAutomobile manufactureDate]];
           [data  addObject: date];


           [labels addObject: @"Engine Capacity"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[[ self.currentAutomobile engine] capacity]]];


           [labels addObject: @"Plate Number"];
           [data  addObject: [[NSNumber alloc] initWithInteger:[self.currentAutomobile plateNumber]]];

           [labels addObject: @"Body Serial Number"];
          [data  addObject: [[NSNumber alloc] initWithInteger:[ self.currentAutomobile bodySerialNumber]]];
       }
//
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%d", data.count);
    return data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    int count = 0;
////    if(count<[data count]){
//    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
//    NSLog(@"%d", selectedIndexPath.row);
    if([[data objectAtIndex:indexPath.row] isKindOfClass:[NSNumber class]]){
        NSInteger intValue = [[data objectAtIndex:indexPath.row] integerValue];
        NSString *strValue = [NSString stringWithFormat: @"%d", intValue];
        cell.detailTextLabel.text = strValue;
        cell.textLabel.text = [labels objectAtIndex:indexPath.row];
    }
    
    else{
        cell.detailTextLabel.text  = [data objectAtIndex:indexPath.row];
        cell.textLabel.text = [labels objectAtIndex:indexPath.row];
    }
//    count ++ ;
//  NSLog(@"%d" , indexPath.row) ;
    return  cell;

}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
