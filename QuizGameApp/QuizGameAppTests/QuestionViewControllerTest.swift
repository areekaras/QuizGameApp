//
//  QuestionViewControllerTest.swift
//  QuizGameAppTests
//
//  Created by Shibili Areekara on 10/11/21.
//

import Foundation
import XCTest
@testable import QuizGameApp

class QuestionViewControllerTest: XCTestCase {
    
    func test_viewDidLoad_renderQuestionHeaderText() {
        let sut = QuestionViewController(question: "Q1", options: [])
        _ = sut.view
        
        XCTAssertEqual(sut.headerLabel.text, "Q1")
    }
    
    func test_viewDidLoad_withNoOptions_renderZeroOptions() {
        let sut = QuestionViewController(question: "Q1", options: [])

        _ = sut.view

        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }
    
    func test_viewDidLoad_withOneOption_renderOneOption() {
        let sut = QuestionViewController(question: "Q1", options: ["A1"])

        _ = sut.view
        
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
    
    func test_viewDidLoad_withOneOption_renderOneOptionText() {
        let sut = QuestionViewController(question: "Q1", options: ["A1"])

        _ = sut.view
        
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = sut.tableView.dataSource?.tableView(sut.tableView, cellForRowAt: indexPath)
        
        XCTAssertEqual(cell?.textLabel?.text, "A1")
    }
}
