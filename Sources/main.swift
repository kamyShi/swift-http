import Foundation

#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

let environment = NSProcessInfo.processInfo().environment
var port = environment["PORT"]
if port == nil || port == "" {
    port = "8080"
}
let portInt = UInt16(port!)

var http = HTTP(port: portInt!)
http.start()
