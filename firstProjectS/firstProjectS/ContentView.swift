//
//  ContentView.swift
//  firstProjectS
//
//  Created by StudentPM on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    //create a variable to store the number
    @State var num: Int = 0
    var body: some View {
        //It is like a div that store tha things vertical
        VStack {
            //print this in the scream
            Text("Click buttons below to change the counter")
            //empty espace
            Text("")
            //Print the num content in the scream
            Text("\(num)")
            Text("")
            Text("")
            //This is like a div that store the things horisontal.
            HStack {
                //create a button that work with the increment function.
                Button(action: {increment()}, label: {
                    Text("Increment")//Put the text that is in the button.
                    //style the button
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(6)
                })
                //create a button that work with the decrement function.
                Button(action: {decrement()}, label: {
                    Text("decrement")//Put the text that is in the button.
                    //style the button.
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(6)
                })
            }
        }
    }
    //A function for the increment button
    func increment(){
        // if the number es less that 50 add one to num then the button do not work
        if num < 50{
            num += 1
        }
    }
    //A function for the decrement button
    func decrement(){
        // if the number es bigger that 0 add one to num then the button do not work
        if num > 0{
            num -= 1
        }
    }
}

#Preview {
    ContentView()
}
