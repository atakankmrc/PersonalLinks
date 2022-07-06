//
//  ContentView.swift
//  PersonalLinks
//
//  Created by Atakan Kömürcü on 5.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(spacing: 30) {
                
                AsyncImage(url: URL(string: "https://picsum.photos/100"))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .cornerRadius(100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(.white, lineWidth: 2)
                    )
                    .shadow(color: .gray, radius: 5, x: 2, y: 2)
                
                Text("@atakankmrc")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(Edge.Set.horizontal, 10)
                    .padding(Edge.Set.vertical, 5)
                    .background(.white)
                    .cornerRadius(20)
            }.padding(.top, 50)
            
            Spacer()
            
            VStack(alignment: .center, spacing: 30) {
                ListButton(title: "Youtube")
                
                ListButton(title: "Instagram")
                
                ListButton(title: "Github")
                
                ListButton(title: "Linkedin")
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
    }
}

struct ListButton: View {
    let title: String
    var body: some View {
        Button(title) {
            
        }
        .foregroundColor(.black)
        .font(.title2)
        .frame(width: 200, height: 40)
        .background(.white)
        .cornerRadius(20)
    }
}
