import SwiftUI

enum CalcButtonType {
    case NUMBER
    case OPERATION
    case SPECIAL
    case NUMBER_LONG
    case TRANSPARENT
}

struct CalcButton: View {
    var name: String
    var size: CGFloat
    var delta: CGFloat
    var type: CalcButtonType
    var color: Color? = nil
    var colorFont: Color? = nil
    
    init(name: String, type: CalcButtonType, size: Int) {
        let palette = Palette()
        self.name = name
        self.delta = CGFloat(size / 25)
        self.size = CGFloat(size) - self.delta
        self.type = type
        switch type {
        case .SPECIAL:
            color = palette.secondary()
            colorFont = palette.secondaryInvertedFont()
        case .OPERATION:
            color = palette.primary()
            colorFont = palette.white()
        case .NUMBER_LONG:
            fallthrough
        case .NUMBER:
            fallthrough
        default:
            color = palette.secondaryInverted()
            colorFont = palette.secondaryFont()
        }
    }
    
    var body: some View {
        if type == .TRANSPARENT {
            Color.clear
        }
        else {
            Text(name)
                .bold()
                .font(.system(size: (self.size - self.delta) / 2))
                .frame(
                    width: self.type == .NUMBER_LONG
                    ? (self.size * 2) + 2 * self.delta
                    : self.size,
                    height: self.size
                )
                .background(color)
                .cornerRadius(self.size)
                .foregroundColor(colorFont)            
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        CalcButton(name: "7", type: .NUMBER_LONG, size: 100)
    }
}
