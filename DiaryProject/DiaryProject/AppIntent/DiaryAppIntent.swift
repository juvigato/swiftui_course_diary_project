//
//  DiaryAppIntent.swift
//  DiaryProject
//
//  Created by Juliana Pavan on 02/12/25.
//

import AppIntents
import SwiftUI

struct DiaryAppIntent: AppIntent {
    static var title: LocalizedStringResource = "Bora escrever!"
    static var description = IntentDescription(stringLiteral: "Escreva no seu diário ;)")
    
    @Parameter(title: "Título")
    var title: String
    
    @Parameter(title: "Nome do ícone")
    var iconName: String
    
    @Parameter(title: "Texto")
    var text: String
    
    init() { }
    
    init(title: String, iconName: String, text: String) {
        self.title = title
        self.iconName = iconName
        self.text = text
    }
    
    func perform() async throws -> some IntentResult {
        DiaryViewModel.shared.addField(icon: Image(systemName: iconName.lowercased()),
                                       title: title,
                                       text: text,
                                       imageName: nil)
        return .result()
    }
}
