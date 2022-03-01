import SwiftUI

// TODO: Implement 3 different views for
// - Portrait mode (could be the same for slide over)
// - Landscape mode
// - Slide over mode
// The reason is that we are depending
// too much on `CGFloat(calcSize(geo.size.width))`

// TODO: Implement keyboard support

struct ContentView: View {
    func calcSize(_ size: CGFloat) -> Int {
        print(size)
        if size < 400 {
            return 80
        }
        else if size < 1000 {
            return 140
        }
        return 110
    }
    
    func gridLayout(_ size: CGFloat) -> Array<GridItem> {
        return Array(
            repeating: GridItem(
                .flexible(maximum: CGFloat(calcSize(size))),
                alignment: .leading
            ),
            count: 4
        )
    }

    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                Text("0").font(.system(size: CGFloat(calcSize(geo.size.width)) / 2))
                HStack {
                    Spacer()
                    LazyVGrid (columns: gridLayout(geo.size.width), spacing: 10) {
                        ForEach (ButtonController().buttons, id: \.self.0) {(name, type) in
                            CalcButton(
                                name: name,
                                type: type,
                                size: calcSize(geo.size.width)
                            )
                        }
                    }
                    Spacer()
                }
            }.padding(geo.size.width / 40)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
