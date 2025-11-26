import SwiftUI

struct MainButton: View {
    let buttonText: String
    var isCTA: Bool = false

    var body: some View {
        Text(buttonText)
            .textCase(.uppercase)
            .fontWeight(.heavy)
            .fontDesign(.rounded)
            .foregroundStyle(.white)
            .frame(width: isCTA ? 300 : 250, height: 50)
            .background(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    MainButton(buttonText: "Button")
}
