import XCTest
import SnapshotTesting
@testable import EvercodeApp

final class EmptyViewSnapshotTests: XCTestCase {

    func testEmptyView() throws {
        
        let emptyView = EmptyView()
        
        assertSnapshot(matching: emptyView, as: .image(size: CGSize(width: 300, height: 500)))
    }
}
