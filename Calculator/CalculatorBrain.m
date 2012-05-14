//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Антон Помозов on 06.03.12.
//  Copyright (c) 2012 Штрих-М. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain ()

@property (nonatomic, strong) NSMutableArray *programStack;

@end

@implementation CalculatorBrain

@synthesize programStack = _operandStack;

- (NSMutableArray *)programStack {
    if (!_operandStack) {
        _operandStack = [[NSMutableArray alloc] init];
    }
    
    return _operandStack;
}

- (void)pushOperand:(double)operand {
    NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    [self.programStack addObject:operandObject];
}

- (double)popOperand {
    NSNumber *operandObject = self.programStack.lastObject;
    if (operandObject) {
        [self.programStack removeLastObject];
    }
    return [operandObject doubleValue];
}

- (double)performOperation:(NSString *)operation {
    [self.programStack addObject:operation];
    double result =[CalculatorBrain runProgram:self.program];
    
    return result;
}

- (id)program {
    
}

    double result = 0;

    if ([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if ([operation isEqualToString:@"*"]) {
        result = [self popOperand] * [self popOperand];
    } else if ([operation isEqualToString:@"-"]) {
        double subtrahend = [self popOperand];
        result = [self popOperand] - subtrahend;
    } else if ([operation isEqualToString:@"/"]) {
        double divisor = [self popOperand];
        if (divisor) {
            result = [self popOperand] / divisor;
        }
    }
    
    [self pushOperand:result];
    
    return result;
}

@end
