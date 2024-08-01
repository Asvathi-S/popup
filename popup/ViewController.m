//
//  ViewController.m
//  popup
//
//  Created by Lcode Technologies on 30/10/23.
//

#import "ViewController.h"
#import "SubViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
//#import <core>
@interface ViewController ()
 
@end

@implementation ViewController

static AVSpeechSynthesizer* synthesizer = NULL;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
  
//    NSDate *newDate = [NSDate date];
//
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"dd-MM-yyyy"];
//
//    NSString *dateString = [formatter stringFromDate:newDate];
//   synthesizer = [[AVSpeechSynthesizer alloc] init];
   
//
    NSString *str = @"19991204";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMdd"];
    NSDate *date = [dateFormat dateFromString:str];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSString *mydate = [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:date]];
    NSString *dtr =@"HELLO WORLD";
   
    
    [self.circleview3 layoutIfNeeded];
    self.circleview3.layer.cornerRadius = 20.0f;
//        self.circleview3.layer.cornerRadius = self.circleview3.bounds.size.width / 2.0;
//         self.txttext.text = dtr;
    self.circleview3.layer.shadowColor = [UIColor redColor].CGColor;
    self.circleview3.layer.shadowOpacity = 0.5;
//        _circleview3.shadowRadius = 5.0;
//        _circleview3.shadowOffset = CGSizeMake(0, 2);
    // Do any additional setup after loading the view.
}
- (IBAction)proceed:(id)sender {
 
    SubViewController *cprSubProductView = [[SubViewController alloc] initWithNibName:@"SubViewController" bundle:nil];
    [self.navigationController pushViewController:cprSubProductView animated:YES];
    
}

- (IBAction)cancel:(id)sender {
    
    NSString *str = @"Hello friend, how are you?";
    
    synthesizer = [[AVSpeechSynthesizer alloc] init];
 
    AVSpeechUtterance *speechutt = [AVSpeechUtterance speechUtteranceWithString:str];
    
    speechutt.volume=90.0f;
    speechutt.rate=0.50f;
    speechutt.pitchMultiplier=0.80f;
    [speechutt setRate:0.3f];
    speechutt.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-us"];
    
    [synthesizer speakUtterance:speechutt];
     
}





@end
