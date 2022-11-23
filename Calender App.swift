import SwiftUI

struct ContentView: View {
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    var body: some View {
        ZStack{
            backgroundGradient
            VStack{
                Text("hello world")
        VStack {
            ZStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 70)
            }
            }
        }
        VStack {
            
            
        }
        }
        
    }
}
