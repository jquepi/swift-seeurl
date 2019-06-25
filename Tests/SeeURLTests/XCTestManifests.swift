#if !canImport(ObjectiveC)
import XCTest

extension HTTPClientTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HTTPClientTests = [
        ("testCustomUserAgent", testCustomUserAgent),
        ("testEffectiveURL", testEffectiveURL),
        ("testFetchLargeFile", testFetchLargeFile),
        ("testGzippedResponse", testGzippedResponse),
        ("testResponseBody", testResponseBody),
        ("testSSLStatusCode", testSSLStatusCode),
        ("testStatusCode", testStatusCode),
    ]
}

extension cURLTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__cURLTests = [
        ("testGetStatusCode", testGetStatusCode),
        ("testHeaderWriteFunction", testHeaderWriteFunction),
        ("testPostField", testPostField),
        ("testReadFunction", testReadFunction),
        ("testSetHeaderOption", testSetHeaderOption),
        ("testWriteFunction", testWriteFunction),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HTTPClientTests.__allTests__HTTPClientTests),
        testCase(cURLTests.__allTests__cURLTests),
    ]
}
#endif
