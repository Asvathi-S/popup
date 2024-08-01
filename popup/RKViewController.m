//
//  RKViewController.m
//  popup
//
//  Created by Lcode Technologies on 06/11/23.
//

#import "RKViewController.h"
#import "CprMerchantcardDetailsTableViewCell.h"

@interface RKViewController ()

@end

@implementation RKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    // gradientLayer.colors = @[(id)[UIColor blueColor].CGColor, (id)[UIColor greenColor].CGColor];
    gradientLayer.colors =@[(id)[UIColor colorWithRed:0.0f/255.0f green:180.0f/255.0f blue:245.0f/255.0f alpha:1].CGColor,(id)[UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1].CGColor];
    
    gradientLayer.startPoint = CGPointMake(0.5, 0.0);
    gradientLayer.endPoint = CGPointMake(0.5, 1.0);
    gradientLayer.shadowOffset = CGSizeMake(0.0, 2.0);
    gradientLayer.frame = self.topbkgview.bounds;
    [self.topbkgview.layer insertSublayer:gradientLayer atIndex:0];
    [self.merchantlisttableview registerNib:[UINib nibWithNibName:@"CprMerchantcardDetailsTableViewCell"
                                                           bundle:[NSBundle mainBundle]]
                     forCellReuseIdentifier:@"CprMerchantcardDetailsTableViewCellID"];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CprMerchantcardDetailsTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CprMerchantcardDetailsTableViewCellID"];
    
//    cell.lblname.text = [@":  " stringByAppendingString: crr.UserName];
//    cell.lblacno.text = [@":  " stringByAppendingString: crr.UserAccountNumber];
//    cell.lblvpa.text  = [@":  " stringByAppendingString: crr.Accountvpa];
//
//    cell.lblmsg.text =@"***Merchant has registered Successfully, Pending for Branch Authorization";

    
    
    return cell;
 }

@end
