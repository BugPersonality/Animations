//
//  ContentView.swift
//  AnimationsSwiftUI
//
//  Created by Данил Дубов on 27.12.2020.
//

import SwiftUI

struct MainAnimationsView: View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    NavigationLink(
                        destination: StarWarsTextView(),
                        label: {
                            Text("Star wars intro text")
                        })
                }
                
                Section{
                    Divider()
                }
            }
            
        }
        .navigationBarTitle("Animations")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainAnimationsView()
    }
}
