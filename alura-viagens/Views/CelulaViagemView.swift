//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Mac M1 on 27/01/22.
//

import SwiftUI

struct CelulaViagemView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame( height: self.horizontalSizeClass == .compact ? 125 : 200)
            .clipped()
            HStack{
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
            
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[1])
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
