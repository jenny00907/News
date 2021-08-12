//
//  Webview.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/12.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else{
            return WKWebView.pageNotFoundView()
        }
    
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
}

extension WebView {
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
        guard let url = URL(string: self.url) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
