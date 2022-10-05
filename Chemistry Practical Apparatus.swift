import SwiftUI

func RandomPrompt() -> String{
    let things = ["Definition of precision"]
    return String(things.randomElement()!)
}
func RandomAnswer() -> String {
    let answers = ["Precision is determined by the range of values/measurements, or the smallest division on the measuring instrument"]
    return String(answers.randomElement()!)
}

struct ContentView: View {
    @State var GoodThingPrompt: String = RandomPrompt()
    @State var GoodThingAnswer: String = RandomAnswer()
    @State var GoodThing2: String = ""
    @State var GoodThing3: String = ""
    @State var GoodThing4: String = ""
    @State var GoodThing5: String = ""
    @State var GoodThing6: String = ""
    @State var GoodThing7: String = ""
    var body: some View {
        ScrollView {
            Image("scientific research")
            Text(GoodThingDisplay)
                .font(.title)
                .fixedSize(horizontal: false, vertical: true)
            Button ("Question") {
                GoodThingDisplay = GoodThingPrompt 
            }
            Button ("Answer"){
                GoodThingDisplay = GoodThingAnswer 
            }
        }
    }
}



