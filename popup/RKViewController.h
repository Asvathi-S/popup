//
//  RKViewController.h
//  popup
//
//  Created by Lcode Technologies on 06/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RKViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *merchantlisttableview;
@property NSMutableArray *merchantcardListArray;

@property (strong, nonatomic) IBOutlet UIView *topbkgview;
@end

NS_ASSUME_NONNULL_END
