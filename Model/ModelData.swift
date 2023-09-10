//
//  ModelData.swift
//  Landmarks
//
//  Created by Bekir Berke Yılmaz on 10.09.2023.
//

import Foundation
import Combine

final class ModelData: ObservableObject{
    @Published var landmarks: [Landmark] = load("landmarkData")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: "json") else {
        fatalError("Couldn't find (filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load (filename) from main bundle:\n(error)")
    }

    do {
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode(T.self, from: data)
        return decodedData
    } catch {
        fatalError("Couldn't parse (filename) as (T.self):\n(error)")
    }
}

