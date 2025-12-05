import Foundation
import FoundationModels

//@Generable
struct DiaryTag: Hashable, Identifiable {
//    @Guide(description: "Generates a hashtag for the diary entry")
    var tag: String
    
    var id: UUID = UUID()
}
