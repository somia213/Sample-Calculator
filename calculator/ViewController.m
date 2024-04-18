//  ViewController.m
//  calculator
//
//  Created by Mac on 17/04/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize num1 , num2 , answer , operand , theNumber , resultLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNum1:0];
    [self setNum2:0];
    [self setOperand:PLUS];
    [self setAnswer:0.0];
    [self setTheNumber:@""];
    [self printNumber];
}
-(IBAction)calculate:(id)sender{
    num2 = [theNumber integerValue];
    
    if (num1 % 1 == 0 && num2 % 1 == 0) {
        if(operand == PLUS)
            answer = num1 + num2;
        else if (operand == MINUS)
            answer = num1 - num2;
        else if (operand == MULTIPLY)
            answer = num1 * num2;
        else {
            if (num2 == 0) {
                UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error!"
                    message:@"Cannot divide by zero"
                    preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
                [alertController addAction:okAction];
                
                [self presentViewController:alertController animated:YES completion:nil];
            } else {
                answer = (double)num1 / (double)num2;
            }
        }
    } else {
        if(operand == PLUS)
            answer = (double)num1 + (double)num2;
        else if (operand == MINUS)
            answer = (double)num1 - (double)num2;
        else if (operand == MULTIPLY)
            answer = (double)num1 * (double)num2;
        else {
            if (num2 == 0) {
                UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error!"
                    message:@"Cannot divide by zero"
                    preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
                [alertController addAction:okAction];
                
                [self presentViewController:alertController animated:YES completion:nil];
            } else {
                answer = (double)num1 / (double)num2;
            }
        }
    }
    
    // Check if the answer is an integer or a double
    if (fmod(answer, 1) == 0) {
        theNumber = [NSString stringWithFormat:@"%d", (int)answer];
    } else {
        theNumber = [NSString stringWithFormat:@"%f", answer];
    }
    
    [self printNumber];
    
    num1 = 0;
    num2 = 0;
    answer = 0.0;
}

-(IBAction)clearnum:(id)sender {
    theNumber = @"";
    [self printNumber];
}

-(void)printNumber{
    [resultLabel setText:theNumber];
}

-(void) saveNum1{
    num1 = [theNumber integerValue];
    theNumber = @"";
    [self printNumber];
}

-(IBAction)setMinus:(id)sender{
    [self saveNum1];
    operand = MINUS;
}

-(IBAction)setMultiply:(id)sender{
    [self saveNum1];
    operand = MULTIPLY;
}

-(IBAction)setPlus:(id)sender{
    [self saveNum1];
    operand = PLUS;
}

-(IBAction)setDivide:(id)sender{
    [self saveNum1];
    operand = DIVIDE;
}

-(IBAction)press9:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"9"];
    [self printNumber];
}

-(IBAction)press8:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"8"];
    [self printNumber];
}

-(IBAction)press7:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"7"];
    [self printNumber];
}

-(IBAction)press6:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"6"];
    [self printNumber];
}

-(IBAction)press5:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"5"];
    [self printNumber];
}

-(IBAction)press4:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"4"];
    [self printNumber];
}

-(IBAction)press3:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"3"];
    [self printNumber];
}

-(IBAction)press2:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"2"];
    [self printNumber];
}

-(IBAction)press1:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"1"];
    [self printNumber];
}

-(IBAction)press0:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"0"];
    [self printNumber];
}


-(IBAction)setDecimal:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"."];
    [self printNumber];
}

-(IBAction)setPercentage:(id)sender{
    double number = [theNumber doubleValue] / 100.0;
    theNumber = [NSString stringWithFormat:@"%f", number];
    [self printNumber];
}

@end

