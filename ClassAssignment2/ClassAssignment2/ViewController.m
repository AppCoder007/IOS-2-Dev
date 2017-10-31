//
//  ViewController.m
//  ClassAssignment2
//
//  Created by user on 10/30/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)NSArray *USstates;
@property (nonatomic, strong)NSArray *UScapitals;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.USstates = @[@"Alabama",@"Alaska",@"Arizona",@"Arkansas",@"California",@"Colorado",@"Connecticut",@"Delaware",@"Florida",@"Georgia",@"Hawaii",@"Idaho",@"Illinois",@" Indiana",@"Iowa",@"Kansas",@"Kentucky",@"Louisiana",@"Maine",@"Maryland",@"Massachusetts",@"Michigan",@"Minnesota",@"Mississippi",@"Missouri",@"Montana", @"Nebraska",@"Nevada",@"New Hampshire",@"New Jersey",@"New Mexico",@"New York",@"North Carolina",@"North Dakota",@"Ohio",@"Oklahoma",@"Oregon",@"Pennsylvania", @"Rhode Island",@"South Carolina",@"South Dakota",@"Tennessee",@"Texas",@"Utah",@"Vermont",@"Virginia",@"Washington",@"West Virginia",@"Wisconsin",@"Wyoming"];
                    
    self.UScapitals = @[@"Montgomery",
                        @"Juneau",
                        @"Phoenix",
                        @"Little Rock",
                        @"Sacramento",
                        @"Denver",
                        @"Hartford",
                        @"Dover",
                        @"Tallahassee",
                        @"Atlanta",
                        @"Honolulu",
                        @"Boise",
                        @"Springfield",
                        @"Indianapolis",
                        @"Des Moines",
                        @"Topeka",
                        @"Frankfort",
                        @"Baton Rouge",
                        @"Augusta",
                        @"Annapolis",
                        @"Boston",
                        @"Lansing",
                        @"St. Paul",
                        @"Jackson",
                        @"Jefferson City",
                        @"Helena",
                        @"Lincoln",
                        @"Carson City",
                        @"Concord",
                        @"Trenton",
                        @"Santa Fe",
                        @"Albany",
                        @"Raleigh",
                        @"Bismarck",
                        @"Columbus",
                        @"Oklahoma City",
                        @"Salem",
                        @"Harrisburg",
                        @"Providence",
                        @"Columbia",
                        @"Pierre",
                        @"Nashville",
                        @"Austin",
                        @"Salt Lake City",
                        @"Montpelier",
                        @"Richmond",
                        @"Olympia",
                        @"Charleston",
                        @"Madison",
                        @"Cheyenne"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.USstates count];
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* simpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
        
    }
    
    UIImage *highlightedImage = [UIImage imageNamed:@"check1"];
    cell.imageView.highlightedImage = highlightedImage;
    
    
    UIImage *image = [UIImage imageNamed:@"uncheck1"];
    cell.imageView.image = image;
    
   
        cell.textLabel.text = self.USstates[indexPath.row];
        cell.textLabel.font = [UIFont boldSystemFontOfSize:30];
   // tableView.rowHeight = 70;
  //  if (indexPath.row < 7){
        cell.detailTextLabel.text = self.UScapitals[indexPath.row];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:20];
    cell.indentationLevel =2;
    cell.backgroundColor = [UIColor lightGrayColor];

   
    return  cell;
}


#pragma  mark UITableView Delegate Methods
/*-(NSInteger) tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    return indexPath.row % 4;
}*/
-(NSIndexPath *) tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0)
        return  indexPath;
    else
        return indexPath;
    
}

-(void )tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *rowValue = self.USstates[indexPath.row];
    NSString *rowSubValue = self.UScapitals[indexPath.row];
    NSString *message = [[NSString alloc ]initWithFormat:@"You selected %@ state and Capital is %@.", rowValue, rowSubValue];
    // UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"ROW SELECTED" //message:message preferredStyle:UIAlertControllerStyleAlert];
    //   [controller addAction]
    
    NSLog(@"%@",message);
    // dismiss row selection
   // [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
