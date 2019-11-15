//
//  ViewController.m
//  TestObjective-C
//
//  Created by iHub on 18/10/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.ringYValuesArray = [[NSMutableArray alloc]init];
    self.namesRingYValuesArray = [[NSMutableArray alloc]init];

//    [self.ringYValuesArray insertObjects:@[@13,@30,@52,@73,@91,@34] atIndexes:@[@0,@1,@2,@3,@4,@5]];
    
    ////
    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:1] atIndex:0]; //Nikhil
    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:1] atIndex:1]; //Charan
    
    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:0] atIndex:2]; //Nivas
    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:0] atIndex:3]; //Naresh

    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:1] atIndex:4]; // Dinesh
    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:0] atIndex:5]; // Srikanth

    [self.namesRingYValuesArray insertObject:@"Nikhil" atIndex:0]; //Nikhil
    [self.namesRingYValuesArray insertObject:@"Charan" atIndex:1]; //Charan
    
    [self.namesRingYValuesArray insertObject:@"Nivas" atIndex:2]; //Nivas
    [self.namesRingYValuesArray insertObject:@"Naresh" atIndex:3]; //Naresh
    
    [self.namesRingYValuesArray insertObject:@"Dinesh" atIndex:4]; // Dinesh
    [self.namesRingYValuesArray insertObject:@"Srikanth" atIndex:5]; // Srikanth

    
//    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:75] atIndex:2]; // Free Review
//    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:90] atIndex:3]; //Vaccination
//
//    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:105] atIndex:3]; //Scans
//    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:120] atIndex:3]; //NT Scan USG
//
//    [self.ringYValuesArray insertObject:[NSNumber numberWithInteger:135] atIndex:2]; //Target Scan
    
    ////
    
    [self callRingChart];
}

-(void)callRingChart{
    //    //Pie Chart
    JRingChart *ring = [[JRingChart alloc] initWithFrame:CGRectMake(0, 0, self.ringGraphView.frame.size.width, self.ringGraphView.frame.size.height)];
    /*        background color         */
    ring.backgroundColor = [UIColor whiteColor];
    /*        Data source array, only the incoming value, the corresponding ratio will be automatically calculated         */
    ring.valueDataArr = self.ringYValuesArray;
    ring.namesDataArr = self.namesRingYValuesArray;
    /*         Width of ring graph        */
    ring.ringWidth = 15.0;
    /*        Fill color for each section of the ring diagram         */
//    ring.fillColorArray = @[[UIColor colorWithRed:18/255.0 green:190/255.0 blue:207/255.0 alpha:1.0], [UIColor colorWithRed:55/255.0 green:120/255.0 blue:162/255.0 alpha:1.0]];
    /*        Start animation             */
    [ring showAnimation];
    
    [self.ringGraphView addSubview:ring];
    
}

@end
