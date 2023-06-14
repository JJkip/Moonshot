//
//  Mission.swift
//  Moonshot
//
//  Created by Joseph Langat on 14/06/2023.
//

import Foundation


struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
