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
                    }.padding()
                     .foregroundColor(.white)
                     .background(changeBgColor[0][i] == true ? colors[0][i] : .blue)
                    
                }
            }
            
            GridRow {
                ForEach(0..<colors[1].count) { i in
                    Button("Tap to change color") {
                        self.changeBgColor[1][i].toggle();
                    }.padding()
                     .foregroundColor(.white)
                     .background(changeBgColor[1][i] == true ? colors[1][i] : .blue)
                    
                }
            }
            
            GridRow {
                    ForEach(0..<colors[2].count) { i in
                        Button("Tap to change color") {
                            self.changeBgColor[2][i].toggle();
                        }.padding()
                         .foregroundColor(.white)
                         .background(changeBgColor[2][i] == true ? colors[2][i] : .blue)
                        
                    }
                }
            
        } .padding(12)  
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// sdsdsd

