//
//  NMAutomobileTableViewController.m
//  Anas Final Project
//
//  Created by Students on 4/22/21.
//

#import "NMAutomobileTableViewController.h"
#import "NMCar.h"
#import "NMTruck.h"
#import "NMMotorCycle.h"

@interface NMAutomobileTableViewController (){
    NSMutableArray *autoMobile;
}


@end

@implementation NMAutomobileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    autoMobile = [NSMutableArray new];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NMCar *car = [[NMCar alloc] initWithChairNumber:3 isFurnitreLeather:YES width:3.0 length:5.5 color:[UIColor colorWithRed:0.2 green:0.3 blue:0.4 alpha:1] manufactureCompany:@"Tesla" manufactureDate:[NSDate date] model:@"Model S" engine:[[NMEngine alloc] init] plateNumber:4435 bodySerialNumber:999];
      
    [autoMobile addObject:car];

    car = [[NMCar alloc] initWithChairNumber:3 isFurnitreLeather:YES width:5.0 length:6.5 color:[UIColor colorWithRed:0.2 green:0.3 blue:0.4 alpha:1] manufactureCompany:@"BMW" manufactureDate:[NSDate date] model:@"Model S" engine:[[NMEngine alloc] init] plateNumber:6547 bodySerialNumber:555];
    
    [autoMobile addObject:car];

   
    NMTruck *truck = [[NMTruck alloc]initWithFreeWeight:150
                                              fullWight:300
                                                  width:160
                                                 length:400
                                                  color:[UIColor colorWithRed:0.2 green:0.3 blue:0.4 alpha:1]
                                            manufactureCompany:@"Volvo"
                                               manufactureDate:[NSDate new]
                                                         model:@"454"
                                                        engine:[NMEngine new]
                                                   plateNumber:8866
                                       bodySerialNumber:56789654345];
    
    [autoMobile addObject:truck];
    
    NMMotorCycle *motorcycle = [[NMMotorCycle alloc] initWithTierDiameter:17
                                                                  length:130
                                                      manufactureCompany:@"KTM"
                                                         manufactureDate:[NSDate new]
                                                                   model:@"323"
                                                                  engine:[NMEngine new]
                                                             plateNumber:3322
                                                         bodySerialNumber:45678932323];
    
  

    
    [autoMobile addObject:motorcycle];
    
}


#pragma mark - Navigation


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return autoMobile.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    

    cell.textLabel.text = [autoMobile[indexPath.row] manufactureCompany];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    if([autoMobile[indexPath.row] isKindOfClass:[NMCar class]]){
        cell.detailTextLabel.text = @"Car";
    }
    
    else if([autoMobile[indexPath.row] isKindOfClass:[NMTruck class]]){
        cell.detailTextLabel.text = @"Truck";
    }
    else if([autoMobile[indexPath.row] isKindOfClass:[NMMotorCycle class]]){
        cell.detailTextLabel.text = @"MotorCycle";

    }
    return  cell;

}


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NMAutomobileImageViewController *autoMobileImage = [segue destinationViewController];
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    [autoMobileImage setCurrentAutomobile:[autoMobile objectAtIndex:selectedIndexPath.row]];
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
