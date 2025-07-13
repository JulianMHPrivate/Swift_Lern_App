//
//  ContentView.swift
//  Swift_Lern_App
//
//  Created by Julian Meyer on 11.07.25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.topics, id: \.self) { topic in
                    NavigationLink(topic.title) {
                        DetailView(topic: topic)
                        
                    }
                    }
                }
            .navigationTitle("Swift Lernen")
                }
        }
        }
    


#Preview {
    ContentView()
}
