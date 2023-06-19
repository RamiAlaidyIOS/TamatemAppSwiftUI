//
//  WebViewModel.swift
//  TamatemAppSwiftUI
//
//  Created by Rami Alaidy on 19/06/2023.
//

import SwiftUI
import WebKit

struct KWebView:UIViewRepresentable{

    let url : String
    private var webView: WKWebView?

    init(url: String) {
    self.webView = WKWebView()
    self.url = url
    }

    func makeUIView(context: Context) -> some UIView {
        let webview = UIWebView()
        webview.loadRequest(URLRequest(url: URL(string:url)!))

        return webview
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    func refresh() {
        webView?.reload()
    }
    func goForward(){
        webView?.goForward()
    }
}
