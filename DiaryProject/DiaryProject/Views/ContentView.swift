import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            DiaryHeaderView()

            ForEach(DiaryViewModel.shared.fields) { item in
                DiaryFieldView(header: .init(model: item)) {
                    Text(item.text)
                }
            }

            Spacer()
        }
        .padding()
        .background(Color.Background.primary)
    }
}

#Preview {
    ContentView()
}
