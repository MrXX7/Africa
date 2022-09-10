//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Oncu Can on 10.09.2022.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        
        //        1.Locate the Json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed the locate \(file) in bundle.")
        }
            //            2.Create property for the data
            guard let data = try? Data(contentsOf: url) else {
                fatalError("Failed the load \(file) from bundle.")
            }
            //            3.Create a decoder
            let decoder = JSONDecoder()
            //            4.Create a property for the decoded data
            guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
                fatalError("Failed to decode \(file) from bundle.")
            }
            //            5.Return the ready-to-use data
            return loaded
        }
    }
