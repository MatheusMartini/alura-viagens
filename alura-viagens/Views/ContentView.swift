//
//  ContentView.swift
//  alura-viagens
//
//  Created by Mac M1 on 27/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView{
            GeometryReader{ view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 210 : 310, alignment: .top)
                    
                    List(viagens){ viagem  in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localização")){
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationTitle("")
                    
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
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
