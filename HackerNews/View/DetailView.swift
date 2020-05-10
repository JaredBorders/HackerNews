//
//  DetailView.swift
//  HackerNews
//
//  Created by Jared Borders on 5/9/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://jaredborders.me")
    }
}
