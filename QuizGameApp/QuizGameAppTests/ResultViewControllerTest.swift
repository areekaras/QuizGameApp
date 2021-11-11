//
//  ResultViewControllerTest.swift
//  QuizGameAppTests
//
//  Created by Shibili Areekara on 10/11/21.
//

import Foundation
import XCTest
@testable import QuizGameApp

class ResultViewControllerTest: XCTestCase {
    
    func test_viewDidLoad_rendersSummaryHeaderText() {
        XCTAssertEqual(makeSUT(summary: "a summary").headerLabel.text, "a summary")
    }
    
    func test_viewDidLoad_rendersAnswers() {
        XCTAssertEqual(makeSUT(answers: []).tableView.numberOfRows(inSection: 0), 0)
        XCTAssertEqual(makeSUT(answers: [makeDummyAnswer()]).tableView.numberOfRows(inSection: 0), 1)
    }
    
    
    //MARK:- Helpers
    
    func makeSUT(summary: String = "", answers: [String] = []) -> ResultViewController {
        let sut = ResultViewController(summary: summary, answers: answers)
        _ = sut.view
        return sut
    }
    
    func makeDummyAnswer() -> String {
        return "an answer"
    }
}
