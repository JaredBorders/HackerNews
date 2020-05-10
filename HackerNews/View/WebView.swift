//
//  WebView.swift
//  HackerNews
//
//  Created by Jared Borders on 5/10/20.
//  Copyright © 2020 Jared Borders. All rights reserved.

/*
 Reusable Structure for using WebView when working
 with SwiftUI.
 */

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
