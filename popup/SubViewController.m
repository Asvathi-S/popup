//
//  SubViewController.m
//  popup
//
//  Created by Lcode Technologies on 30/10/23.
//

#import "SubViewController.h"
#import "RKViewController.h"
@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)proceed:(id)sender {
   
    RKViewController *cprSubProductView = [[RKViewController alloc] initWithNibName:@"RKViewController" bundle:nil];
    [self.navigationController pushViewController:cprSubProductView animated:YES];
    
}

@end
