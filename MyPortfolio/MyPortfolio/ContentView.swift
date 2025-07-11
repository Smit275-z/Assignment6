import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image("myPhoto")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 4)
                )
                .shadow(radius: 7)
            
            Text("Smit Patel")
                .font(.title)
                .bold()
            Text("Diploma Computer Programming")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            VStack {
               Image(systemName: "graduationcap.fill")
               Text("Saint clair college")
                   Text("2025 graduation year")
           }
           .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
