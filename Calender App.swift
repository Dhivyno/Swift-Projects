import SwiftUI

struct ContentView: View {
    @State var timing = ""
    @State var months = "test"
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    var body: some View {
        ZStack{
            backgroundGradient
            VStack{
                Text(Date.now, format: .dateTime.day().month().year())
                Spacer()
                Text(months)
                Spacer()
                VStack {
                    Spacer()
                    Text("Please enter the month of your exams")
                    TextField("How many months do you have before your external exams?", text: $months)
                        .background(.red)
                        .cornerRadius(20)
                    Button ("Enter") {
                        if (timing == "january") {
                            months = 
                        }
                        
                    }
                    
                            
                }
            }
            VStack {
                
                
            }
        }
    }
}
