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
    autoMobiles = [NSMutableArray arrayWithObjects:@"Car" , "Truck" , "Motorcycle", nil];
    

}


#pragma mark - Navigation

- (NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
    return autoMobiles.count;
}

- (UITableViewCell *) tableView: (UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = autoMobiles[indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return  cell;
}
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
