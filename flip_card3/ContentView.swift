//
//  ContentView.swift
//  flip_card3
//
//  Created by Mirissa Wellalage　Tashmika Isuri on 2023/11/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetails = false
    @State private var changeBgColor: [[Bool]] = [
                                                [true, true, true, true],
                                                [true, true, true, true],
                                                [true, true, true, true]
                                            ]
    
    @State private var colors: [[Color]] = [
                                                [.red, .gray, .green, .primary],
                                                [.purple, .pink, .cyan, .orange],
                                                [.accentColor, .brown, .yellow, .indigo]
                                           ]


    @State private var selection = "Red"
    let colorsList = ["Red", "Green", "Blue", "Black", "Tartan"]
    @State private var currentColor = "Red"
    
    
    var body: some View {
//        VStack {
//
//            HStack{
//
//                Button("Tap to change color") {
//                    self.changeBgColor[0].toggle();
//                        }
//                        .padding()
//                        .foregroundColor(.white)
//                        .background(changeBgColor[0] == true ? .green : .blue)
//
//                Button("Tap to change color") {
//                    self.changeBgColor[1].toggle();
//                        }
//                        .padding()
//                        .foregroundColor(.white)
//                        .background(changeBgColor[1] == true ? .green : .blue)
//
//            }
//
//
//        }
//        .padding()
        
        Grid {
            GridRow {
                ForEach(0..<colors[0].count) { i in
                    Button("Tap to change color") {
                        self.changeBgColor[0][i].toggle();
                        
                        // fix the logic here
                        
//                        if(selection == colors[0][i]){
//                            print("sd")
//                        }
                        
                        print(colors[0][i])
                    }.padding()
                     .foregroundColor(.white)
                     .background(changeBgColor[0][i] == true ? .blue : colors[0][i])
                    
                }
            }
            
            GridRow {
                ForEach(0..<colors[1].count) { i in
                    Button("Tap to change color") {
                        self.changeBgColor[1][i].toggle();
//                        currentColor = colors[1][i]
                        print(colors[1][i])
                    }.padding()
                     .foregroundColor(.white)
                     .background(changeBgColor[1][i] == true ? .blue : colors[1][i])
                    
                }
            }
            
            GridRow {
                    ForEach(0..<colors[2].count) { i in
                        Button("Tap to change color") {
                            self.changeBgColor[2][i].toggle();
//                            currentColor = colors[2][i]
                            
                            print(colors[2][i])
                        }.padding()
                         .foregroundColor(.white)
                         .background(changeBgColor[2][i] == true ? .blue : colors[2][i])
                        
                    }
                }
            
        } .padding(12)
        
        Picker("Select a paint color", selection: $selection) {
                        ForEach(colorsList, id: \.self) {
                            Text($0)
                        }
        }
        .pickerStyle(.menu)

        Text("Selected color: \(selection)")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
