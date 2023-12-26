//
//  ContentView.swift
//  iOSColorPickerExample
//
//  Created by 영준 이 on 2023/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var textColor = Color.black
    
    var body: some View {
        VStack {
            Rectangle().foregroundColor(textColor)
            ColorPicker("Color", selection: $textColor)
            ColorPicker(selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/, supportsOpacity: false, label: {
                Text("Color without Opacity")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
