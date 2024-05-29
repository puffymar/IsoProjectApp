import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            title
            VStack(spacing: 250) {
                ForEach(cards) { card in
                    CardView(card : card)
                        .scrollTransition { content,
                            phase in
                            content.scaleEffect(phase.isIdentity ? 1 : 0.8)
                                .rotationEffect(.degrees(phase.isIdentity ? 0 : -30))
                                .rotation3DEffect(.degrees(phase.isIdentity ? 0 : 60), axis: (x: -1, y: 1, z:0))
                                .blur(radius: phase.isIdentity ? 0 : 60)
                                .offset(x: phase.isIdentity ? 0 : 10)
                               
                                .offset(x: phase.isIdentity ? 0 : -180)
                    }
                }
            }
            .scrollTargetLayout()
            .padding(.bottom, 100)
        }
        .scrollTargetBehavior(.viewAligned)
    }
    var title: some View {
        VStack(alignment: .leading) {
            Text("Explore")
                .font(.largeTitle.weight(.bold))
            Text("\(Date().formatted(date: .complete, time: .omitted))")
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
    }
}

#Preview {
    ContentView()
}
