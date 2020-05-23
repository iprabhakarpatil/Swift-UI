//
//  ContentView.swift
//  FIrst SwiftUI App
//
//  Created by Prabhakar Patil on 16/05/20.
//  Copyright © 2020 prabhakar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var whoIsThereVisible: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to my first SwiftUI App")
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                
                Button(action: {
                    self.alertIsVisible = true
                    print("Hit me pressed")
                }) {
                    Text("Hit Me")
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    return Alert(title: Text("Hello There!!!"), message: Text("This is my first Swift UI Pop-up"), dismissButton: .default(Text("Awesome!!!")))
                }
                
            }
            Button(action: {
                self.whoIsThereVisible = true
                print("Knock knock tapped")
            }) {
                Text("Knock Knock")
            }
            .alert(isPresented: $whoIsThereVisible) { () -> Alert in
                return Alert(title: Text("Knock Knock"), message: Text("Pizza delivery here"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
