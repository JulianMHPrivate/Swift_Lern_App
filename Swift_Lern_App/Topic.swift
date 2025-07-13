//
//  Topic.swift
//  Swift_Lern_App
//
//  Created by Julian Meyer on 11.07.25.
//

import Foundation

struct Topic: Decodable , Hashable{

    let title: String
    let explanation: String
    let codeSnippet: String
}
