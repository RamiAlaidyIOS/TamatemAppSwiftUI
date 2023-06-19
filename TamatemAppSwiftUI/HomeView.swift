//
//  ContentView.swift
//  TamatemAppSwiftUI
//
//  Created by Rami Alaidy on 19/06/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var isPresentWebView = false

    var body: some View {

        NavigationView{

            VStack{

                NavigationLink(destination: {
                    WebView()
                }) {
                    Text("Open Browser")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.indigo)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.indigo, lineWidth: 10)
                        )
                }
            }
            .padding()
            .foregroundColor(.black)
            .navigationTitle("Home")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
