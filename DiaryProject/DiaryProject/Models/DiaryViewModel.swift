//
//  ContentViewModel.swift
//  DiaryProject
//
//  Created by Juliana Pavan on 04/12/25.
//

import FoundationModels
import Foundation
import SwiftUI

@Observable
class DiaryViewModel {
    static let shared = DiaryViewModel()
    
    var fields: [DiaryField] = [
        DiaryField(icon: Image(systemName: "heart.fill"),
                      title: "Magic Kingdom",
                      date: "24 de nov de 25",
                      text: "This is halloween, this is halloween",
                      imageName: "magic_kingdom",
                      tags: [DiaryTag(tag: "#castelo")])
    ]
    
    private func generate(input: String) async -> [DiaryTag] {
        // TODO: Fix creation of tag
//        let instruction = "Create 3 hashtags that sumarises the content of the text."
//
//        let session = LanguageModelSession(model: .default, instructions: instruction)
//
//        do {
//            let response = try await session.respond(to: input, generating: [DiaryTag].self)
//            print("### Response: \(response)")
//            return response.content
//
//        } catch {
//            print("### Error: \(error.localizedDescription)")
//            return []
//        }
        return [DiaryTag(tag: "#tag")]
    }
    
    func addField(icon: Image, title: String, text: String, imageName: String?) async {
        let date = Date.now.formatted(date: .abbreviated, time: .omitted)
        let tags = await generate(input: text)
        let newField = DiaryField(icon: icon,
                                     title: title,
                                     date: date,
                                     text: text,
                                     imageName: imageName,
                                     tags: tags)
        DiaryViewModel.shared.fields.append(newField)
    }
}
