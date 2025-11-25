import SwiftUI

extension Color {
    init(dark: Color, light: Color) {
        self = Color(UIColor { traitCollection in
            traitCollection.userInterfaceStyle == .dark ? UIColor(dark) : UIColor(light)
        })
    }
}

extension ShapeStyle where Self == SwiftUI.Color {
    static func color(_ token: Color) -> Self {
        token
    }
}

extension Color {
    enum Text {
        static var title: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
                                 light: SwiftUI.Color(uiColor:#colorLiteral(red: 0.08967358619, green: 0.01420643833, blue: 0.03665563837, alpha: 1)))
        }

        static var caption: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
                                 light: SwiftUI.Color(uiColor:#colorLiteral(red: 0.1550142169, green: 0.16767928, blue: 0.1860278547, alpha: 1)))
        }
    }

    enum Icon {
        static var primary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.08967358619, green: 0.01420643833, blue: 0.03665563837, alpha: 1)))
        }

        static var brand: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
        }
    }

    enum Background {
        static var primary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.09707006067, green: 0.07800304145, blue: 0.08343816549, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8921670318, green: 0.8921670318, blue: 0.8921670318, alpha: 1)))
        }

        static var secondary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.2093148828, green: 0.2254349589, blue: 0.2487861514, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8471847773, green: 0.8471847177, blue: 0.8471847773, alpha: 1)))
        }
    }
}
