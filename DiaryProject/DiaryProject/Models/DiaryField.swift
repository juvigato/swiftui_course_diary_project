import Foundation
import SwiftUI

struct DiaryField: Identifiable {
    var id: UUID = UUID()
    let icon: Image
    let title: String
    let date: String
    let text: String
    let imageName: String?
}

@Observable
class DiaryViewModel {
    static let shared = DiaryViewModel()
    
    var fields: [DiaryField] = [
        DiaryField(icon: Image(systemName: "heart.fill"),
                   title: "Magic Kingdom",
                   date: "24/11/25",
                   text:  "This is halloween, this is halloween",
                   imageName: "magic_kingdom"),
        DiaryField(icon: Image(systemName: "star.fill"),
                   title: "Epcot",
                   date: "24/11/25",
                   text:  "O que é aquela atração dos guardiões??? Melhor brinquedoo!!!",
                   imageName: "epcot"),
        DiaryField(icon: Image(systemName: "square"),
                   title: "Hollywood Studios",
                   date: "24/11/25",
                   text:  "o Andy tá vindo!",
                   imageName: nil)
    ]
    
    func addField(icon: Image, title: String, text: String, imageName: String?) {
        let date = Date.now.formatted(date: .abbreviated, time: .omitted)
        let newField = DiaryField(icon: icon,
                                  title: title,
                                  date: date,
                                  text: text,
                                  imageName: imageName)
        DiaryViewModel.shared.fields.append(newField)
    }
}
