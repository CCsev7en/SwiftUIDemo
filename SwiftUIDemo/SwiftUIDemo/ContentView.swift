//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Chen Chen on 11/3/20.
//  Copyright © 2020 chen chen. All rights reserved.
//

import SwiftUI
let urlStr = "https://jsonplaceholder.typicode.com/todos/"
struct ContentView: View {
    @State private var results = [UserInfo]()
    func getData() {
        let url = URL(string: urlStr)!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                self.results = try! JSONDecoder.init().decode([UserInfo].self, from: data)
            }
        }.resume()
    }
    
    var body: some View {
        List(results, id: \.id)  {
            Text($0.title)
        }.onAppear(perform: getData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
