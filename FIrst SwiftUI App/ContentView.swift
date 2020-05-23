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
                Slider(value: .constant(10))
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
                return Alert(title: Text("Hello There!!!"), message: Text("This is my first Swift UI Pop-up"), dismissButton: .default(Text("Awesome!!!")))
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
