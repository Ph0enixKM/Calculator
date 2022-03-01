import SwiftUI

struct Colors {
    var primary = Color(red: 1.0, green: 0.3, blue: 0)
    var light = Color(red: 0.8, green: 0.8, blue: 0.8)
    var dark = Color(red: 0.2, green: 0.2, blue: 0.2)
    var white = Color(red: 1, green: 1, blue: 1)
    var black = Color(red: 0, green: 0, blue: 0)
}

class Palette {
    @Environment(\.colorScheme) private var theme
    private var colors = Colors()
    
    func primary() -> Color {
        return colors.primary
    }
    
    func secondary() -> Color {
        return (self.theme == .dark)
            ? colors.dark
            : colors.light
    }
    
    func secondaryInverted() -> Color {
        return (self.theme == .light)
            ? colors.dark
            : colors.light
    }
    
    func secondaryFont() -> Color {
        return (self.theme == .dark)
            ? colors.dark
            : colors.light
    }
    
    func secondaryInvertedFont() -> Color {
        return (self.theme == .light)
            ? colors.dark
            : colors.light
    }
    
    func white() -> Color {
        return colors.white
    }
}
