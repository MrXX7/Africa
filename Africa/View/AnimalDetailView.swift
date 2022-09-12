//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Oncu Can on 12.09.2022.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle("Learn about \(animal.headline)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals-json")
    
    static var previews: some View {
        AnimalDetailView(animal: animals[0])
    }
}
