import Foundation
import SwiftUI

struct DiaryField: Identifiable {
    var id: UUID = UUID()
    let icon: Image
    let title: String
    let date: String
    let text: String
    let imageName: String?
    let tags: [DiaryTag]
}
