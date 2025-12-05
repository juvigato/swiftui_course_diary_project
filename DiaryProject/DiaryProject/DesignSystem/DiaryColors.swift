import SwiftUI

enum DiaryColors { }

extension DiaryColors {
    
    /// Enum that specifies the text colors used on the project
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

    /// Enum that specifies the icon colors used on the project
    enum Icon {
        static var primary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.08967358619, green: 0.01420643833, blue: 0.03665563837, alpha: 1)))
        }
    }
    
    /// Enum that specifies the brand colors used on the project
    enum Brand {
        static var `default`: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
        }
        
        static var secondary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.9)))
        }
    }

    /// Enum that specifies the background colors used on the project
    enum Background {
        static var primary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.09707006067, green: 0.07800304145, blue: 0.08343816549, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.9438040853, green: 0.9438040853, blue: 0.9438040853, alpha: 1)))
        }

        static var secondary: Color {
            return SwiftUI.Color(dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.373460114, green: 0.373460114, blue: 0.373460114, alpha: 1)),
                                 light: SwiftUI.Color(uiColor: #colorLiteral(red: 0.8471847773, green: 0.8471847177, blue: 0.8471847773, alpha: 1)))
        }
    }
}
