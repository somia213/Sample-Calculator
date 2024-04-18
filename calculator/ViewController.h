//
//  ViewController.h
//  calculator
//
//  Created by Mac on 17/04/2024.
//

#import <UIKit/UIKit.h>

#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3

@interface ViewController : UIViewController
{
    NSInteger num1;
    NSInteger num2;
    double answer;
    
    NSInteger operand;
    NSString *theNumber;
    
    IBOutlet UILabel *resultLabel;
        
}

@property NSInteger num1;
@property NSInteger num2;
@property double answer;

@property NSInteger operand;

@property (strong, nonatomic) NSString *theNumber;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@end

