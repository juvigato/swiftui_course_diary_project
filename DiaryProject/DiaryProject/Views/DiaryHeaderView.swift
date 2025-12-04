import SwiftUI

// TODO: Remove file if not needed
struct DiaryHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Jujuba's Diary")
                    .foregroundColor(DiaryColors.Text.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(DiaryColors.Icon.brand)
            }
            .frame(maxWidth: .infinity,
                   alignment: .leading)
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(DiaryColors.Icon.brand)
        }
    }
}
