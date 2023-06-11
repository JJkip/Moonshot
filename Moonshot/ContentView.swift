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

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100){
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
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
