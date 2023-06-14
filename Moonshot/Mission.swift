//
//  Mission.swift
//  Moonshot
//
//  Created by Joseph Langat on 14/06/2023.
//

import Foundation

struct CrewRole: Codable {
    let name: String
    let role: String
}

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
