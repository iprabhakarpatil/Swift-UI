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

    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            // Target Row
            HStack {
                Text("Put the bullseye as close as you can to: ")
                Text("100")
            }
            
            Spacer()
            
            // Slider Row
            HStack{
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            Spacer()
            
            // Button Row
            Button(action: {
                self.alertIsVisible = true
                print("Hit me pressed")
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                
                let roundedValue: Int = Int(self.sliderValue.rounded())
                
                return Alert(title: Text("Hello There!!!"), message: Text("The slider's value is :\(roundedValue)"), dismissButton: .default(Text("Awesome!!!")))
            }
            
            Spacer()
            
            // Score Row
            HStack {
                // Start Over Button
                Button(action: {
                    print("Start Over button tapped")
                }) {
                    Text("Start Over")
                }
                
                Spacer()
                
                // Score Label:
                Text("Score")
                Text("9999")
                
                Spacer()
                
                // Round Label:
                Text("Round")
                Text("9999")
                
                Spacer()
                
                // Info Button
                Button(action: {
                    print("Info button tapped")
                }) {
                    Text("Info")
                }
                
            }
            .padding(.bottom, 20.0)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
