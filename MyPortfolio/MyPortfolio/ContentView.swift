import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
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
            
            Divider()
               RoundedRectangle(cornerRadius: 10)
                   .fill(Color.blue.opacity(0.2))
                   .frame(height: 50)
                   .overlay(
                       Text("Code. Create. Innovate.")
                           .font(.subheadline)
                           .foregroundColor(.blue)
                   )
            
            Spacer()
                Button(action: {
                    showAlert = true
                }) {
                    Label("Favourite Course", systemImage: "book.fill")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .alert("Favourite Course", isPresented: $showAlert) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("My favourite course so far is Mobile Application Development!")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
