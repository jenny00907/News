//
//  WKWebView+Extensions.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/12.
//

import Foundation
import WebKit

extension WKWebView {
    static func pageNotFoundView() -> WKWebView {
        let wk = WKWebView()
        wk.loadHTMLString("<html><body><h1>Page not found!</h1></body></html>", baseURL: nil)
        return wk
        
    }
}
