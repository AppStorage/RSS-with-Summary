// TODO:
// Make it so that adding an RSS feed in the modal dialog adds an RSS feed in the SourceSelect view
// Make it so that RSS feeds can be marked as read
// Make it so clicking on a feed opens up the different articles in article view


import Foundation
import SwiftUI

struct SourceSelect: View {
    @State private var showingAddRSSModal = false
    @State private var RSSFeedToAdd: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("1: Source Select")
                Button(action: {
                    showingAddRSSModal = true
                }) {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $showingAddRSSModal, content: {
                    Text("Add RSS Feed")
                        .padding()
                    TextField("Paste RSS Feed Here", text: $RSSFeedToAdd)
                        .onSubmit {
                            showingAddRSSModal = false
                        }
                        .padding()
                })
            }
            
            Divider()
            SourceItem()
            Divider()
            SourceItem()
            Divider()
        }
        Divider()
    }
}

struct SourceItem: View {
    var body: some View {
        Text("RSSFeed")
            .padding()
    }
}




