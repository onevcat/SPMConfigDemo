import MachO

public struct MyLibrary {
    
    #if DEBUG
    public static let libContainsDebugFlag = true
    #else
    public static let libContainsDebugFlag = false
    #endif
    
    #if CUSTOM
    public static let libContainsCustomFlag = true
    #else
    public static let libContainsCustomFlag = false
    #endif
    
    public static var architecture: String {
        let info = NXGetLocalArchInfo()
        return String(validatingUTF8: (info?.pointee.description)!)!
    }
}
