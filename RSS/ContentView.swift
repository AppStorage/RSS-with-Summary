//
//  ContentView.swift
//  RSS
//
//  Created by Zach Bohl on 1/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            // Add your views here
            SourceSelect()
            ArticleSelect()
            ArticleText()
            Summary()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
