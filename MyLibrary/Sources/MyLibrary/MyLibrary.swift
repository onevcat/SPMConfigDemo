import MachO

public struct MyLibrary {
    
    #if DEBUG
    public static let containsDebugFlag = true
    #else
    public static let containsDebugFlag = false
    #endif
    
    public static var architecture: String {
        let info = NXGetLocalArchInfo()
        return String(validatingUTF8: (info?.pointee.description)!)!
    }
}
