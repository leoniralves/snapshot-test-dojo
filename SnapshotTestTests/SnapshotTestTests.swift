//
//  SnapshotTestTests.swift
//  SnapshotTestTests
//
//  Created by magalu on 19/03/24.
//

import XCTest
import FBSnapshotTestCase
@testable import SnapshotTest

final class SnapshotTestTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        recordMode = false
    }

    func test_storyboard() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: UIViewController = storyboard.instantiateViewController(withIdentifier: String(describing: ViewController.self))
        
        FBSnapshotVerifyViewController(sut)
    }
}
