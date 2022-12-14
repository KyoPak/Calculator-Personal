//
//  LinkedListTests.swift
//  LinkedListTests
//
//  Created by Kyo on 2022/09/20.
//

import XCTest

@testable import Calculator
class LinkedListTests: XCTestCase {

    var sut: LinkedList<Double>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LinkedList<Double>()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_append_5번_후_count_확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.append(data: 4.0)
        sut.append(data: 5.0)
        XCTAssertEqual(sut.bringListCount(), 5)
    }
    
    func test_append_5번_후_removeFirst후_head확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.append(data: 4.0)
        sut.append(data: 5.0)
        sut.removeFirst()
        XCTAssertEqual(sut.bringHead(), 2.0)
    }
    
    func test_append_5번_후_tail확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.append(data: 4.0)
        sut.append(data: 5.0)
        XCTAssertEqual(sut.bringTail(), 5.0)
    }
    
    func test_append_3번_removeFirst_1번_후_확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.removeFirst()
        XCTAssertEqual(sut.bringListCount(), 2)
    }
    
    func test_append_2번_removeFirst_2번_후_확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.removeFirst()
        sut.removeFirst()
        XCTAssertEqual(sut.bringListCount(), 0)
    }

    func test_append_2번_removeFirst_3번_후_확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.removeFirst()
        sut.removeFirst()
        sut.removeFirst()
        XCTAssertEqual(sut.bringListCount(), 0)
    }
    
    func test_append_3번_후_removeAll실행_count확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.removeAll()
        XCTAssertTrue(sut.bringListCount() == 0)
    }
    
    func test_append_3번_후_removeAll실행_head와tail확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.removeAll()
        XCTAssertEqual(sut.bringHead() == nil && sut.bringTail() == nil, true)
    }
    
    func test_append_3번_후_head확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        XCTAssertTrue(sut.bringHead() == 1.0)
    }
    
    func test_append_3번_removeFirst_1번후_head확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.removeFirst()
        XCTAssertTrue(sut.bringHead() == 2.0)
    }
    
    func test_append_3번_후_tail확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        XCTAssertTrue(sut.bringTail() == 3.0)
    }
    
    func test_append_3번_removeFirst_1번후_tail확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.removeFirst()
        XCTAssertTrue(sut.bringTail() == 3.0)
    }
    
    func test_append_3번_removeFirst_3번후_head확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.append(data: 3.0)
        sut.removeFirst()
        sut.removeFirst()
        sut.removeFirst()
        XCTAssertTrue(sut.bringHead() == nil)
    }
    
    func test_append_2번_removeFirst_3번후_head확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.removeFirst()
        sut.removeFirst()
        sut.removeFirst()
        XCTAssertTrue(sut.bringHead() == nil)
    }
    
    func test_append_2번_removeFirst_3번후_tail확인() {
        sut.append(data: 1.0)
        sut.append(data: 2.0)
        sut.removeFirst()
        sut.removeFirst()
        sut.removeFirst()
        XCTAssertTrue(sut.bringHead() == nil)
    }
}
