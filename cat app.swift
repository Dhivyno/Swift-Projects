import SwiftUI

struct ContentView: View {
    @GestureState var dragOffset = CGSize.zero // CGSize A structure that contains width and height values.
    @State var position = CGSize.zero
    @State var brushingPoints = 0.00
    @State var CatBodyWidth = 304.00 // Must be floating number
    @State var animateBall = false
    
    
    var body: some View {
        // @State var GoodThing1: String = ""

        
        VStack{
        ZStack {
            
            Image("CatBody")
                .resizable()
                .offset(x: -20, y: 230)
            .frame(width: CatBodyWidth, height: 240) // original size 304 height 240 Can use to thin and thicken the cat
            
            
            ZStack {
                Image("cathead")
                Image("Cat mouth")
                    .offset(x: -20, y: 70)
                Image("cat nose")
                    .offset(x: -20, y: 50)
                
                
            Circle()
                .frame(width: 60, height: 500)
                .offset(x: -90, y: 0)
                Circle()
                    .frame(width: 60, height: 500)
                    .offset(x: +50, y: 0)
                Circle()
                    .fill(.white)
                    .frame(width: 25, height: 500)
                    .offset(x: +40, y: -5)
                
                Circle()
                    .fill(.white)
                    .frame(width: 25, height: 500)
                    .offset(x: -80, y: -5)
            }
        }
            Spacer()
            HStack{
            Image("Iphone")  //add a fist which the cat says black lives matter 
                    .resizable()
                    .frame(width: 100, height:200)
                .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
                .gesture(
                    DragGesture()
                        .onChanged(({ _ in
                            brushingPoints += 0.1
                            CatBodyWidth += 0.01  
                        }))
                        .updating($dragOffset, body: { (value, state, transaction) in
                            state = value.translation
                        })
                        .onEnded({ (value) in // Remove this section and it will go back to where it starts
                            self.position.height += value.translation.height
                            self.position.width += value.translation.width
                            print("height",position.height) // So you can see coordinates
                            print("width",position.width)
                            print("points",brushingPoints)
                        })
                )
                Button{
                    print("Fed Cat")
                    CatBodyWidth += 1
                }
                label: {
                    Image("catfood")
                }
                VStack{
                    Image("ball")
                        .offset(x:animateBall ? -1250 : 0 ,y: animateBall ? -1500 : 0)
                        .scaleEffect(animateBall ? 0.5 : 1.0)
                    
                    // More fun effects to try
                    //.rotationEffect(.degrees(animateBall ? 360 : 0))
                    //.rotation3DEffect(
                    //Angle(degrees: animateBall ? 360 : 0),
                    //axis: (x: 0, y: animateBall ? 180 : 0, z: 0))
                    
                    .animation(.linear(duration: 1), value: animateBall)
                    //.animation(.interpolatingSpring(stiffness: 50, damping: 5), value: animateBall)
                    Button("Throw") {
                        animateBall.toggle()
                        CatBodyWidth -= 0.5
                    }
                    .padding()
                    .background(Color(red: 1, green: 0.7, blue: 0.2))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
                    
                }
                Text("\(brushingPoints, specifier: "%.2f") Brush points")
                    .font(.title)
            }
            Text("Cat Pet Simulator")
                .padding()
                .font(.title)
            
    }
        .background(
            Image("kitchen")
                .offset(x: 0, y: -225)
        )
    }
}

// Original cat came from: https://pixabay.com/illustrations/cat-feline-little-cat-kawaii-5160456/ 
// Using under Pixabay license.
