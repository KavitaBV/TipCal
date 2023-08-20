//
//  CalculationTests.swift
//  TipCalTests
//
//  Created by pk on 20/08/23.
//

import XCTest
@testable import TipCal

final class CalculationTests: XCTestCase {

    func testSuccessfulTipCalculation() {
        // Given
        let enteredAmount = 100.0
        let tipSlider = 25.0
        let calculation = Calculation()
        // When
        let tip = calculation.calculateTip(of: enteredAmount, tip: tipSlider)
        // Then
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeTipCalculation() {
        // Given
        let enteredAmount = -100.0
        let tipSlider = 25.0
        let calculation = Calculation()
        // When
        let tip = calculation.calculateTip(of: enteredAmount, tip: tipSlider)
        // Then
        XCTAssertNil(tip)
    }
}
