import SwiftUI

import SwiftUI



struct ResistanceView: View {
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    @State var resistance = 0.00
    @State var resistance2 = 0.00
    @State var current = 0.00
    @State var chargeDensity = 0.00
    @State var crossSectionalArea = 0.00
    @State var driftVelocity = 0.00
    @State var voltage = 0.00
    @State var relativeChargeOfChargeCarriers = 0.00
    @State var resistivity = 0.00
    @State var lengthOfMaterial = 0.00
    @State var cm = 0
    @State var m = 0
    var body: some View {
        ScrollView{
            ZStack{
            backgroundGradient
                VStack{
            VStack {
                Text("Physics Helper :)")
                        .font(.title)
                Text(" ")
                }
                Text("Resistance unknown (R = pL/A)")
                    .font(.title2)
                HStack {
                    Text("Resistivity:")
                        .padding()
                    TextField("Resistivity", value: $resistivity, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.all, 5)
                        .background(.gray)
                }
                HStack {
                    Text("Length:")
                        .padding()
                    TextField("Length", value: $lengthOfMaterial, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.all, 5)
                        .background(.black)
                }
                HStack {
                    Text("Cross-sectional:")
                        .padding()
                    TextField("Cross-sectional area", value: $crossSectionalArea, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.all, 5)
                        .background(.red)
                }
                
                let resistance = resistivity*lengthOfMaterial/crossSectionalArea
                HStack {
                    Text("Resistance is")
                        .font(.title2)
                    Text(String(resistance))
                        .bold()
                        .font(.title2)
                    Text("Ω")
                        .bold()
                        .font(.title2)
                }
                
                Text("Resistance unknown (R = V/I)")
                    .font(.title)
                    .padding()
                    .padding()
                HStack {
                    Text("Voltage:")
                        .padding()
                    TextField("Voltage across component", value: $voltage, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.all, 5)
                        .background(.blue)
                }
                HStack {
                    Text("Current:")
                        .padding()
                    TextField("Current across component", value: $current, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding(.all, 5)
                        .background(.red)
                }
            
        
                let resistance2 = voltage/current
                HStack {
                    Text("Resistance is")
                        .font(.title2)
                    Text(String(resistance2))
                        .bold()
                        .font(.title2)
                    Text("Ω")
                        .bold()
                        .font(.title2)
                }
            }
            }
        }
    }  
}

