//
//  ContentView.swift
//  SPMConfigDemo
// 
//  Created by: onevcat (Wei Wang) on 2022/10/13
//

import SwiftUI
import MyLibrary

#if DEBUG
public let appContainsDebugFlag = true
#else
public let appContainsDebugFlag = false
#endif

#if CUSTOM
public let appContainsCustomFlag = true
#else
public let appContainsCustomFlag = false
#endif

struct ContentView: View {
    var body: some View {
        Form {
            Text("Arch: \(MyLibrary.architecture)")
            
            Section("DEBUG flag") {
                Text("App: \(appContainsDebugFlag ? "YES" : "NO")")
                Text("Package: \(MyLibrary.libContainsDebugFlag ? "YES" : "NO")")
            }
            Section("CUSTOM flag") {
                Text("App: \(appContainsCustomFlag ? "YES" : "NO")")
                Text("Package: \(MyLibrary.libContainsCustomFlag ? "YES" : "NO")")
            }
        }
        .monospaced()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
