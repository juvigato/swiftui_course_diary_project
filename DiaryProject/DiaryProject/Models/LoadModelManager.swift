import Foundation
import SwiftUI

private var fieldArrayModel: [FieldModel] = load("DiaryData.json")
var diaryModel = getViewModel()

private func getViewModel() -> [DiaryField] {
    fieldArrayModel.compactMap { field in
        let tags: [DiaryTag] = field.tags.map {
            DiaryTag(tag: $0)
        }
        
        return DiaryField(icon: Image(systemName: field.iconName),
                          title: field.title,
                          date: field.date, text: field.text,
                          imageName: field.imageName,
                          tags: tags)
    }
}

private func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename). Error: \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't decode \(filename). Error: \(error)")
    }
}
