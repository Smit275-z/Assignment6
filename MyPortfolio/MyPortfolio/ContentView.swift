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
            
            Divider()
                 VStack(alignment: .leading, spacing: 4) {
                     Text("Career Goal:")
                         .font(.headline)
                     Text("Aspiring iOS Developer with a passion for creating user-friendly mobile applications.")
                         .font(.subheadline)
                 }
                 .frame(maxWidth: .infinity, alignment: .leading)
                 
                 VStack(alignment: .leading, spacing: 4) {
                     Text("Portfolio Highlights:")
                         .font(.headline)
                     Text("• GPA: 3.9/4.0")
                     Text("• Experienced ios developer")
                     Text("• Deep knowledge of Angular")
                     Text("• Java and Kotlin Proficient")
                 }
                 .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
