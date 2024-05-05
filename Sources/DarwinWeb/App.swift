import TokamakDOM
import DarwinWebLibrary

@main
struct TokamakApp: App {
    var body: some Scene {
        WindowGroup("Tokamak App") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
        VStack {
          Image("LandingPage.jpg")
          Text("Feed your curiosity")
            .font(.system(size: 80))

        }
        }
    }
}



