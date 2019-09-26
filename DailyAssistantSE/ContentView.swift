//
//  ContentView.swift
//  DailyAssistantSE
//
//  Created by Genesis Mosquera on 9/26/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1...7, id: \.self) { item in
                    NavigationLink(destination: Text("Today's To-Do")) {
                        HStack {
                            Image(systemName: "cloud")
                                .frame(width: 40, height: 40)
                                .foregroundColor(.red)
                                .background(Color.blue)
                            .cornerRadius(20)
                            Text("Item \(item)")
                        }
                    }
                }
            }
        .navigationBarTitle("To-Dos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
