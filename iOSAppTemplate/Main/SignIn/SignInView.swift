//
//  SignInView.swift
//  iOSAppTemplate
//
//  Created by MAC21 on 21/06/22.
//

import SwiftUI

struct SignInView: View {
    
    @EnvironmentObject var appState: AppState
    @StateObject var authViewModel = AuthViewModel()
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("rotom")
                    .resizable()                
                    .ignoresSafeArea()            
            ScrollView{
                VStack(spacing: 15){
                    Text("Hola De Nuevo!")
                        .font(.system(size: 25, weight: .bold))
                    Text("Es bueno verte otra vez por aqui")
                        .font(.system(size: 20))
                        .frame(maxWidth: 200)
                    
                    VStack(spacing:25){
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
                            authViewModel.login(email: email, password: password)
                        } label: {
                            Text("Iniciar Sesión!")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .background(.purple)
                        .cornerRadius(8)
                        
                        NavigationLink(destination: SignUpView()){
                            Text("No eres miembro? Registrate Ahora!")
                        }
                    }
                    }.padding()
                }
            }
        }.accentColor(.green)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
