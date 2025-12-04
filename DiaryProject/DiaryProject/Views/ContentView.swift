import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
             
            List(DiaryViewModel.shared.fields) { field in
                
                DiaryFieldView(header: .init(model: field)) {
                    
                    Text(field.text)
                    
                    if let imageName = field.imageName {
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(maxHeight: 200)
                            .clipped()
                            .padding(.top, DiarySpacing.small)
                            .padding(.bottom, DiarySpacing.small)
                            
                    }
                }
                
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            
            .listStyle(.plain)
            .background(DiaryColors.Background.primary)
            .listRowBackground(Color.clear)
            
            .navigationTitle("Diário da Jujuba")
        }
    }
}

#Preview {
    ContentView()
}
