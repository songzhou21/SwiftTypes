//
//  Int.swift
//  SwiftTypesTests
//
//  Created by Song Zhou on 2020/6/13.
//  Copyright © 2020 Song Zhou. All rights reserved.
//

import XCTest

class IntTest: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNumbers() throws {
        let a8: Int8 = 8
        let a16: Int16 = 16
        let a32: Int32 = 32
        let a64: Int64 = 64
        let a: Int = 64
        let a_ = -64
        
        let b: UInt = 2
        
        let c: Float = 0.1
        let c_: Float = -0.1
        let d: Double = 0.1
        let d_: Double = -0.1
        
        let n1 = NSNumber(value: 1)
        let nd = NSNumber(value: 0.1)
        let n_1 = NSNumber(value: -1)
        let nd_ = NSNumber(value: -0.1)
        
        let array: [Any] = [a8,a16,a32,a64,a,a_,b,c,c_,d,d_,n1,nd,n_1,nd_]
        
        for e in array {
            print("[\(type(of: e))]: " + String(describing: e))
            switch e {
            case is Int, is Int8, is Int16, is Int32, is Int64:
                print("Int:\(e)")
            case is UInt, is UInt8, is UInt16, is UInt32, is UInt64:
                print("Uint: \(e)")
            case is Float:
                print("Float: \(e)")
            case is Double:
                print("Double: \(e)")
            case is NSNumber:
                XCTAssertFalse(true)
            default:
                XCTAssertFalse(true)
                break
            }
        }
    }
}
