import SwiftUI

struct DiaryHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Jujuba's Diary")
                    .foregroundColor(.Text.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(Color.Icon.brand)
            }
            .frame(maxWidth: .infinity,
                   alignment: .leading)
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.Icon.brand)
        }
    }
}
