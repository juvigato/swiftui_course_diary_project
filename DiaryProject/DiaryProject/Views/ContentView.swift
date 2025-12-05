import SwiftUI
import Foundation

struct ContentView: View {
    
    @State var showAddView: Bool = false
    
    var body: some View {
        
        NavigationStack {
             
            List(DiaryViewModel.shared.fields) { field in
                
                DiaryFieldView(header: .init(model: field)) {
                    
                    Text(field.text)
                        .padding(.top, DiarySpacing.xSmall)
                    
                    if let imageName = field.imageName {
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(maxHeight: 200)
                            .clipped()
                            .padding(.top, DiarySpacing.small)
                            .padding(.bottom, DiarySpacing.small)
                    }
                
                    // TODO: Fix when tag logic is created
                    Text(field.tags[0].tag)
                }
                
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            
            .listStyle(.plain)
            .background(DiaryColors.Background.primary)
            .listRowBackground(Color.clear)
            
            .navigationTitle("Diário da Jujuba")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showAddView.toggle()
                    } label : {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $showAddView) {
                        InputView()
                            .presentationDetents([.medium])
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
