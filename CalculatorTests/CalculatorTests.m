//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Антон Помозов on 06.03.12.
//  Copyright (c) 2012 Штрих-М. All rights reserved.
//

#import "CalculatorTests.h"
#import "CalculatorViewController.h"

@implementation CalculatorTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAddTwoDigits
{
    STAssertEquals(2, 3, @"Error");
}

@end
