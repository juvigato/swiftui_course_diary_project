import SwiftUI

struct DiaryFieldView<Content:View>: View {
    private let header: DiaryHeaderFieldView
    private let content: Content

    init(header: DiaryHeaderFieldView,
         @ViewBuilder content: () -> Content) {
        self.header = header
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading) {
            header
            content
        }
        .padding()
        .background(DiaryColors.Background.secondary)
        .cornerRadius(DiarySpacing.medium)
    }
}
