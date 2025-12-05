import Foundation
import FoundationModels

@Generable
struct DiaryTag: Hashable {
    @Guide(description: "Generates a hashtag for the diary entry")
    var tag: String
}
