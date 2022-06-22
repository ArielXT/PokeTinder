//
//  ProfileView.swift
//  iOSAppTemplate
//
//  Created by MAC21 on 21/06/22.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    
    @EnvironmentObject var appState: AppState
    
    @State private var email: String = "linderhassinger00@gmail.com"
    @State private var name: String = "Linder Hassinger"
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                Image("lab2")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Perfil")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                    Image("io")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(maxWidth: 100)
                    Text(name)
                        .font(.system(size: 26, weight: .black))
                        .foregroundColor(.white)
                    Text(email)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                    
                    HStack {
                        Button {
                            print("Actualziar Perfil")
                        } label: {
                            Text("Actualizar Perfil")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .cornerRadius(8)
                        Spacer()
                        Button {
                            print("Actualizar Perfil")
                        } label: {
                            Text("Seguir")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .background(.gray)
                        .cornerRadius(8)
                    }
                    
                    
                    Spacer()
                    
                    VStack {
                        Divider()
                        Button {
                            try? Auth.auth().signOut()
                            appState.currentScreen = .login
                        } label: {
                            Text("Cerrar Sesión")
                            
                                .font(.system(size: 19, weight: .bold))
                                .foregroundColor(.pink)
                        }
                    }.padding(.bottom)
                    
                    
                }.padding()
                //.navigationBarTitle("Perfil")
            }
        }
        .onAppear {
            let user = Auth.auth().currentUser
            name = user?.displayName ?? "Sin Nombre"
            email = user?.email ?? "Sin Email"
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
