import SwiftUI

struct DiaryHeaderFieldView: View {

    private let icon: Image
    private let title: String
    private let date: String

    init(model: DiaryField) {
        self.icon = model.icon
        self.title = model.title
        self.date = model.date
    }

    var body: some View {
        HStack {
            icon
                .foregroundStyle(DiaryColors.Brand.default)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .bold()
                    .foregroundStyle(DiaryColors.Brand.secondary)
                
                Text(date)
                    .font(.caption)
                    .foregroundStyle(DiaryColors.Text.caption)
            }
            Spacer()
        }
    }
}

#Preview {
    DiaryHeaderFieldView(model: DiaryField(icon: Image(systemName: "heart.fill"),
                                           title: "Title",
                                           date: "12 Jan 25",
                                           text: "Text",
                                           imageName: nil,
                                           tags: []))
}
