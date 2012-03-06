//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Антон Помозов on 06.03.12.
//  Copyright (c) 2012 Штрих-М. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;

@end
