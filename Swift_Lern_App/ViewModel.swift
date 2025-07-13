//
//  ViewModel.swift
//  Swift_Lern_App
//
//  Created by Julian Meyer on 11.07.25.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    let topics: [Topic]
    
    init() {
         guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
             topics = []
             return
        }
        do{
           let data = try Data(contentsOf: url)
            topics = try JSONDecoder().decode([Topic].self, from: data)
        } catch {
            print("Fehler beim Laden des Inhalts: \(error)")
            topics = []
        }
    }
    
}
