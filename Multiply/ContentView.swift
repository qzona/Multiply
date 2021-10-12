//
//  ContentView.swift
//  Multiply
//
//  Created by Student on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField("Enter a number", text: $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Text("X")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter a number", text: $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Button("Calculate") {
                           if let firstNumber = Int(firstNumberTextField) {
                               if let secondNumber = Int(secondNumberTextField) {
                                   calculation = firstNumber * secondNumber
                                                       }
                                if calculation % 2 == 0 {
                                                           imageName = "DogImage"
                                                       }
                                if calculation % 2 == 1 {
                                                           imageName = "CatImage"
                                                       }
                            if calculation == 64 {
                                                       imageName = "HamsterImage"
                               }
                           }
                       }
            Text("\(calculation)")
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Image(imageName)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .aspectRatio(contentMode: .fit)
            

            Spacer()
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
