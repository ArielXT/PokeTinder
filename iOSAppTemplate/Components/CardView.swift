//
//  CardView.swift
//  iOSAppTemplate
//
//  Created by MAC21 on 10/06/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Image("route")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 300)
            Image("delphox")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 280, height: 280, alignment: .center)
            VStack(alignment: .leading){
                Text("Delphox, 25")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.system(size: 23, weight: .bold))
                HStack{
                    Image(systemName: "location")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .bold))
                    Text("Pueblo Acuarela")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .bold))                 }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding()
        }
        .frame(height: 400)
        .cornerRadius(15)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
