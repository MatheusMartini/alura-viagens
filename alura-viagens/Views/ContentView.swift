//
//  ContentView.swift
//  alura-viagens
//
//  Created by Mac M1 on 27/01/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        TabView{
            DestaquesView()
                .tabItem{
                    Text("Destaques")
                    Image("icone-destaques")
                }
            ListaDePacotesView()
                .tabItem{
                    Text("Pacotes")
                    Image("icone-mala")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// VStack = vertical stackView
// HStack = horizontal stack
// ZStack = element above other
