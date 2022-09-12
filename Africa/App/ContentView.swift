//
//  ContentView.swift
//  Africa
//
//  Created by Oncu Can on 6.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals-json")
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone Pro 11")
    }
}
