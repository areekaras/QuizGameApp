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
        let sut = ResultViewController(summary: "a summary", answers: [])
        
        _ = sut.view
        
        XCTAssertEqual(sut.headerLabel.text, "a summary")
    }
    
    func test_viewDidLoad_withoutAnswers_doesNotRenderAnswers() {
        let sut = ResultViewController(summary: "a summary", answers: [])

        _ = sut.view

        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }
    
    func test_viewDidLoad_withOneAnswer_rendersAnswer() {
        let sut = ResultViewController(summary: "a summary", answers: ["A1"])

        _ = sut.view

        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
}
