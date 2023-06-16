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
//    @State private var count = 1
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns){
                        ForEach(missions){ mission in
                            NavigationLink {
                                Text("Detail View")
                            } label: {
                                VStack {
                                    Image(mission.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                    VStack {
                                        Text(mission.displayName)
                                            .font(.caption)
                                        Text(mission.launchDate ?? "N/A")
                                            .font(.caption)
                                    }
                                    .frame(maxWidth: .infinity)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Moonshot")
            }
//            Button("Add") { count += 1 }
//            .padding(30)
//            Button("Subtract"){ count -= 1 }
//            Text("^[\(count) Cow](inflect: true)")
//                .padding(30)
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
