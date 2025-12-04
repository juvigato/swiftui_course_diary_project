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
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(date)
                    .font(.caption)
                    .foregroundStyle(DiaryColors.Text.caption)
            }
            Spacer()
        }
    }
}
