//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Антон Помозов on 06.03.12.
//  Copyright (c) 2012 Штрих-М. All rights reserved.
//

#import "CalculatorTests.h"
#import "CalculatorBrain.h"

@interface CalculatorTests()

@property (nonatomic, strong) CalculatorBrain *brain;

@end

@implementation CalculatorTests

@synthesize brain = _brain;

- (CalculatorBrain *)brain {
    if (!_brain) {
        _brain = [[CalculatorBrain alloc] init];
    }
    
    return _brain;
}

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    self.brain = nil;
    
    [super tearDown];
}

- (void)testAddTwoDigits
{
    [self.brain pushOperand:2];
    [self.brain pushOperand:3];
    
    double expectedResult = 5;
    double result = [self.brain performOperation:@"+"];
    
    STAssertEquals(result, expectedResult, @"Error adding two digits");
}

@end
