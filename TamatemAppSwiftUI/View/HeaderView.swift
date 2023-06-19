//
//  HeaderView.swift
//  TamatemAppSwiftUI
//
//  Created by Rami Alaidy on 19/06/2023.
//

import SwiftUI
import WebKit
struct HeaderView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        HStack{
            Button(action: {
                print("Back")
                dismiss()
            }) {
                Image(systemName: "arrowshape.backward.fill")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
            }
            Spacer()

            Text("Tamatem WebView")
                .font(.headline)
                .bold()
                .foregroundColor(.indigo)
                .padding()
            Spacer()

            Button(action: {
                print("Refresh")
            }) {
                Image(systemName: "goforward")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }

            .padding()
            Button(action: {
                print("Forward")
            }) {
                Image(systemName: "forward.fill")
                    .imageScale(.large)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
