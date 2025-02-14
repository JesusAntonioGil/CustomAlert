//
//  ContentView.swift
//  CustomAlert
//
//  Created by Jesus Antonio Gil on 14/2/25.
//

import SwiftUI


struct ContentView: View {
    @State private var showAlert = false
    
    
    var body: some View {
        NavigationStack {
            List {
                Button("Show Alert") {
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert) {
                    VStack(spacing: 15) {
                        Text("Hello I`m Alert!")
                            .fontWeight(.semibold)
                            .underline()
                        
                        Button("Dismiss") {
                            showAlert.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                    }
                    .padding(15)
                    .background(.background, in: .rect(cornerRadius: 15))
                    .transition(.blurReplace.combined(with: .push(from: .bottom)))
                } background: {
                    Rectangle()
                        .fill(.primary.opacity(0.35))
                }

            }
            .navigationTitle("Custom Alert")
        }
    }
}


#Preview {
    ContentView()
}


struct CustomDialog: View {
    var title: String
    var content: String?
    var image: Config
    var button1: Config
    var button2: Config?
    var addTextField: Bool = false
    var textFieldHint: String = ""
    
    @State private var text: String
    
    
    var body: some View {
        
    }
    
    
    struct Config {
        var content: String
        var tint: Color
        var foreground: Color
        var action: (String) -> () = { _ in }
    }
}
