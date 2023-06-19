//
//  WebView.swift
//  TamatemAppSwiftUI
//
//  Created by Rami Alaidy on 19/06/2023.
//

import SwiftUI
import WebKit

struct WebView: View {
    var body: some View {

        VStack {
            HeaderView()
            KWebView(url: "https://tamatemplus.com")
        }
        .navigationBarHidden(true)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}


