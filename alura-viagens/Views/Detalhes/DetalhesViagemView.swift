//
//  DetalhesViagemView.swift
//  alura-viagens
//
//  Created by Mac M1 on 28/01/22.
//

import SwiftUI

struct DetalhesViagemView: View {
    
    // MARK: atributo
    
    var pacotetDeViagem: PacoteDeViagem
    var corDaFonte = Color(red: 77.0/255, green: 77.0/255, blue: 77.0/255)
    
    @Environment (\.presentationMode) var pressentationMode
    
    var body: some View {
        GeometryReader{ view in
            ScrollView(.vertical, showsIndicators: false){
             
                VStack(alignment: .leading){
                    ZStack{
                        Image(self.pacotetDeViagem.imagens[0])
                            .resizable()
                            .frame(height: 200)
                        Button(action: {
                            self.pressentationMode.wrappedValue.dismiss()
                        }){
                            Image("icone-voltar")
                                .resizable()
                                .frame(width: 15, height: 25, alignment: .leading)
                                .padding(.leading, 15)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                VStack{
                    
                    VStack{
                        
                        Group{
                            Text(self.pacotetDeViagem.titulo.uppercased())
                                .font(.custom("Avenir Black", size: 26))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                            
                            Text(self.pacotetDeViagem.descricao)
                                .font(.custom("Avenir", size: 16))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                            
                            Spacer()
                                .frame(height: 15)
                        }
                                            
                        Text(self.pacotetDeViagem.detalhes)
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(self.corDaFonte)
                            .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                      
                        Spacer()
                            .frame(height: 15)
                        
                        HStack{
                            VStack{
                                Text("Valido para o periodo de")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                                
                                Text(self.pacotetDeViagem.dataValidade)
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                            }
                            
                            VStack{
                                Text(self.pacotetDeViagem.valor)
                                    .font(.custom("Avenir Black", size: 25))
                                    .foregroundColor(.orange)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .trailing)
                                
                                Text("Sem taxas em até 12x")
                                    .font(.custom("Avenir ", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .trailing)

                            }
                        }
                        
                        Divider()
                        
                        VStack{
                            Text("O que esta incluso")
                                .font(.custom("Avenir ", size: 20))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .leading)
                        }
                        
                        HStack{
                            
                            VStack{
                                Image("icone-apartamento")
                                Text("Apartamento")
                                    .font(.custom("Avenir ", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .center)
                            }
                            
                            Spacer()
                                .frame(height: 15)
                            
                            VStack{
                                Image("icone-aviao")
                                Text("Passagem Aérea")
                                    .font(.custom("Avenir ", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width,  alignment: .center)
                            }
                        }
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        
                        Divider()
                        
                        Button(action: {
                            self.pressentationMode.wrappedValue.dismiss()
                        }){
                            Text("Escolher opção")
                                .font(.custom("Avenir Black", size: 16))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: view.size.width-35, height: 40, alignment: .center)
                        .background(Color(red: 211.0/255, green: 58.0/255, blue: 126.0/255))
                        
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
                }
                
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacotetDeViagem: pacotesDeViagens[0])
    }
}
