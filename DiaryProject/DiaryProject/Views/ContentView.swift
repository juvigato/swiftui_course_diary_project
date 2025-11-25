import SwiftUI
import Foundation

struct ContentView: View {

    private var fields: [DiaryField] = [
        DiaryField(id: 0001,
                                           icon: Image(systemName: "heart.fill"),
                                           title: "Aula 01",
                                           date: "24/11/25",
                                           text: "Primeira aula de SwiftUI, como serão os tópicos avançados?"),
        DiaryField(id: 0002,
                                           icon: Image(systemName: "heart"),
                                           title: "Aula 02",
                                           date: "24/11/25",
                                           text: "A primeira aula foi de extensions e um exemplo foi extension de Data, sabemos quem ia adorar! hahah \n#misericordia #stackOverflow")
    ]

    var body: some View {
        VStack(alignment: .leading) {
            DiaryHeaderView()

            ForEach(fields) { item in
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
