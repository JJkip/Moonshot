//
//  ContentView.swift
//  Moonshot
//
//  Created by Joseph Langat on 11/06/2023.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View{
        Text(text)
    }
    
    init(_ text: String){
        print("Creating a new CustomText")
        self.text = text
    }
}

struct Company: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
    ]
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: layout){
//                LazyVGrid(columns: layout){
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
        
        /*
        Button("Decode JSON"){
          let input = """
            {
                "name": "wasiliana",
                "address": {
                    "street":"Galana/Lenana Road",
                    "city":"Nairobi"
                }
            }
            """
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let company = try? decoder.decode(Company.self, from: data) {
                print(company.address.street)
            }
        }
        */
        /*
        NavigationView {
            List(0..<100){ row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text ("Row \(row)")
//                        .padding()
                }
            }
            .navigationTitle("Home")
        }
        */
        /*
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100){
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
//            .frame(maxWidth: .infinity)
        }
         */
//        GeometryReader { geo in
//            Image("Example")
//                .resizable()
//                .scaledToFit()
//                .frame(width: geo.size.width * 0.8)
//                .frame(width: geo.size.width, height: geo.size.height)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
