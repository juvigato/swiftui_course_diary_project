//
//  DiaryShortcutProvider.swift
//  DiaryProject
//
//  Created by Juliana Pavan on 02/12/25.
//

import AppIntents

struct DiaryShortcutProvider: AppShortcutsProvider {
    
    static var appShortcuts: [AppShortcut] {
        AppShortcut(intent: DiaryAppIntent(),
                    phrases: [
                        "Escreva sobre seu dia no \(.applicationName)!"
                    ],
                    shortTitle: "Diário",
                    systemImageName: "heart")
    }
}
