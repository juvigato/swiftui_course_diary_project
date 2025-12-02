import Foundation
import SwiftUI

struct DiaryField: Identifiable {
    var id: UUID = UUID()
    let icon: Image
    let title: String
    let date: String
    let text: String
}

@Observable
class DiaryViewModel {
    static let shared = DiaryViewModel()
    
    var fields: [DiaryField] = [
        DiaryField(icon: Image(systemName: "heart.fill"),
                   title: "Magic Kingdom",
                   date: "24/11/25",
                   text:  "This is halloween, this is halloween"),
        DiaryField(icon: Image(systemName: "star.fill"),
                   title: "Epcot",
                   date: "24/11/25",
                   text:  "O que é aquela atração dos guardiões??? Melhor brinquedoo!!!")
    ]
    
    func addField(icon: Image, title: String, text: String) {
        let date = Date.now.formatted(date: .abbreviated, time: .omitted)
        let newField = DiaryField(icon: icon,
                                  title: title,
                                  date: date,
                                  text: text)
        DiaryViewModel.shared.fields.append(newField)
    }
}
