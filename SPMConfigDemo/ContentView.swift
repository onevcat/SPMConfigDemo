//
//  ContentView.swift
//  SPMConfigDemo
// 
//  Created by: onevcat (Wei Wang) on 2022/10/13
//

import SwiftUI
import MyLibrary

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Arch: \(MyLibrary.architecture)")
            Text("Config: \(MyLibrary.containsDebugFlag ? "DEBUG" : "NO DEBUG")")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
