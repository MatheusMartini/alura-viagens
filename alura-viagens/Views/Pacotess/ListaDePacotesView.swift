//
//  ListaDePacotesView.swift
//  alura-viagens
//
//  Created by Mac M1 on 28/01/22.
//

import SwiftUI

struct ListaDePacotesView: View {
    
    // MARK: atributo
    
    var categorias: [String: [PacoteDeViagem]]{
        Dictionary(grouping: pacotesDeViagens, by: { $0.self.categoria.rawValue})
    }
    

    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(categorias.keys.sorted(), id: \.self){
                    key in
                    SecaoPacotesView(nomeDaSecao: key, pacotes: self.categorias[key]!)
                }
            }
            .navigationTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
            
        }
        .onAppear{
            UITableView.appearance().separatorStyle = .none
            UITableViewCell.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
            UINavigationBar.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
        }
        .onDisappear{
            UITableView.appearance().separatorStyle = .singleLine
            UITableViewCell.appearance().backgroundColor = nil
            UINavigationBar.appearance().backgroundColor = nil
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
