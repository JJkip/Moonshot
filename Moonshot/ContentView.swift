//
//  ContentView.swift
//  Moonshot
//
//  Created by Joseph Langat on 11/06/2023.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    @State private var count = 1
    var body: some View {
        VStack {
//            Text("\(astronauts.count)")
//                .padding()
            Button("Add") { count += 1 }
            .padding(30)
            Button("Subtract"){ count -= 1 }
            Text("^[\(count) Cow](inflect: true)")
                .padding(30)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
