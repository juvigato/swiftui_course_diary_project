//
//  InputView.swift
//  DiaryProject
//
//  Created by Juliana Pavan on 04/12/25.
//

import SwiftUI

struct InputView: View {
    @State private var iconName: String = ""
    @State private var title: String = ""
    @State private var text: String = ""
    
    @State private var showingSheet = true
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            VStack {
                Text("Adicione uma entrada para seu diário!")
                    .padding(.bottom, DiarySpacing.medium)
                    .font(.title3)
                    .bold()
                    
                
                TextField("Nome do ícone", text: $iconName)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom, DiarySpacing.small)
                
                TextField("Título", text: $title)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom, DiarySpacing.small)
                
                TextField("Texto", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom, DiarySpacing.small)
            }
            .padding(DiarySpacing.medium)
            
            
            Button("Adicionar") {
                DiaryViewModel.shared.addField(icon: Image(systemName: iconName),
                                               title: title,
                                               text: text,
                                               imageName: nil)
                dismiss()
            }
            .foregroundStyle(DiaryColors.Brand.default)
            .bold()
    }
}

#Preview {
    InputView()
}
