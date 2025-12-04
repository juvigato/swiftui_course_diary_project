//
//  Color+Ext.swift
//  DiaryProject
//
//  Created by Juliana Pavan on 04/12/25.
//

import SwiftUI

extension Color {
    init(dark: Color, light: Color) {
        self = Color(UIColor { traitCollection in
            traitCollection.userInterfaceStyle == .dark ? UIColor(dark) : UIColor(light)
        })
    }
}
