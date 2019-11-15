//
//  ViewController.h
//  TestObjective-C
//
//  Created by iHub on 18/10/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JRingChart.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *ringYValuesArray;
@property (strong, nonatomic) NSMutableArray *namesRingYValuesArray;

@property (weak, nonatomic) IBOutlet UIView *ringGraphView;

@end

