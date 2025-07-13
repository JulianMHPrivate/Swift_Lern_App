//
//  DetailView.swift
//  Swift_Lern_App
//
//  Created by Julian Meyer on 13.07.25.
//

import SwiftUI

struct DetailView: View {
    let topic: Topic
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Erklärung")
                    .font(.title.bold())
                Text(topic.explanation)
                
                Text("Code-Beispiel")
                    .font(.title.bold())

                
                Text(topic.codeSnippet)
                    .font(.system(size: 14,
                     design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding()
        }
        
        }
   
    }
    

#Preview {
    DetailView(topic: Topic( title:"Konstante", explanation: "Speichert Daten", codeSnippet: "let variable: String"))
}
