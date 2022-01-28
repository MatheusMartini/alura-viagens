//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Mac M1 on 28/01/22.
//

import SwiftUI

struct PacotesViagensView: View {
    
    // MARK: atributos
    
    var pacoteDeViagem: PacoteDeViagem
    
    
    var body: some View {
        
        GeometryReader{ view in
                    
            VStack{
                Image(self.pacoteDeViagem.imagens.first ?? "")
                    .resizable()
                    .frame( height: 135)
                    .clipped()
                
                VStack{
                    
                    Text(self.pacoteDeViagem.titulo)
                        .font(.custom("Avenir Black", size: 12))
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .leading)
                    Text(self.pacoteDeViagem.descricao)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .leading)
                    Text(self.pacoteDeViagem.dataValidade)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .leading)
                    
                    
                    Text("A partir de ")
                        .font(.custom("Avenir", size: 9))
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .trailing)
                    Text(self.pacoteDeViagem.valor)
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(Color.orange)
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .trailing)
                    Text("Em até 12x")
                        .font(.custom("Avenir", size: 9))
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .trailing)
                    Text("Cancelamento Grátis")
                        .font(.custom("Avenir Black", size: 9))
                        .foregroundColor(Color.green)
                        .frame(minWidth: 0,maxWidth: view.size.width, alignment: .trailing)
                    
                }
                .padding(.leading, 5)
                .padding(.trailing, 5)
                .padding(.bottom, 5)
                .padding(.top, -5)
            }
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1)
        .border(Color(red: 211.0/255.0, green: 221.0/255.0, blue: 211.0/255.0))
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView(pacoteDeViagem: pacotesDeViagens[0])
            .previewLayout(.fixed(width: 180, height: 250))
    }
}
