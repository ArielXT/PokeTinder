//
//  SignUpView.swift
//  iOSAppTemplate
//
//  Created by MAC21 on 21/06/22.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var authViewModel = AuthViewModel()
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State var alertError = false
    
    var body: some View {
        ZStack{
            Image("rotom")
                .resizable()
                .ignoresSafeArea()
        ScrollView{
            VStack(alignment: .leading, spacing: 20){
                Text("Registrarse")
                    .font(.system(size: 25, weight: .black))
                Text("Bienvenido a PokeTinder Has Match con tu Pokemon Favorito")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            Spacer()
                VStack(spacing:25){
                    TextField("Ingresa tu Nombre!", text: $name)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(.purple,lineWidth: 1))
                        .keyboardType(.emailAddress)
                    TextField("Ingresa tu Email!", text: $email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(.purple,lineWidth: 1))
                        .keyboardType(.emailAddress)
                    
                    SecureField("Ingresa tu Contraseña!", text: $password)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(.purple,lineWidth: 1))
                    
                    Button{
                        authViewModel.register(name: name, email: email, password: password)
                    } label: {
                        Text("Registrate!")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                    }
                    .frame(maxWidth: .infinity)
                    .background(.purple)
                    .cornerRadius(8)
                }
                }.padding()
                .alert(isPresented: $alertError) {
                    Alert(
                        title: Text("Error"),
                        message: Text(authViewModel.errorMessage),
                        dismissButton: .default(Text("Ok"))
                    )
                }
                .onReceive(authViewModel.$showError) { newValue in
                    alertError = newValue
                }            
        }
    }
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
    
}
