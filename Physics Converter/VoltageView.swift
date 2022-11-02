import SwiftUI

import SwiftUI

struct VoltageView: View {
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    @State var charge = 0.00
    @State var time = 0.00
    @State var resistance = 0.00
    @State var current = 0.00
    @State var current2 = 0.00
    @State var current3 = 0.00
    @State var chargeDensity = 0.00
    @State var crossSectionalArea = 0.00
    @State var driftVelocity = 0.00
    @State var voltage = 0.00
    @State var relativeChargeOfChargeCarriers = 0.00
    @State var resistivity = 0.00
    @State var lengthOfMaterial = 0.00
    @State var energy = 0.00
    var body: some View {
        ScrollView {
            ZStack{
                backgroundGradient
                VStack{
            VStack {
            Text("Voltage unknown (V = IR)")
                .font(.title)
            HStack{
                Text("Current:")
                    .padding()
            TextField("Current across component", value: $current, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding(.all, 5)
                .background(.black)
            }
            HStack {
                Text("Resistance:")
                    .padding()
            TextField("Resistance of component", value: $resistance, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding(.all, 5)
                .background(.cyan)
            }
            let voltage = current*resistance
            HStack {
                Text("Voltage is")
                    .font(.title2)
                Text(String(voltage))
                    .bold()
                    .font(.title2)
                Text("V")
                    .bold()
                    .font(.title2)
            }
            }
            VStack {
            Text("Voltage unknown (V = E/Q)")
                .font(.title)
            HStack{
                Text("Energy:")
                    .padding()
                TextField("Energy given by battery", value: $energy, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding(.all, 5)
                    .background(.gray)
            }
            HStack {
                Text("Charge:")
                    .padding()
                TextField("Total charge that passes through the battery", value: $charge, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding(.all, 5)
                    .background(.teal)
            }
            HStack {
                let voltage = energy/charge
                Text("Voltage is")
                    .font(.title2)
                Text(String(voltage))
                    .bold()
                    .font(.title2)
                Text("V")
                    .bold()
                    .font(.title2)
            }
            }
                }
            }
        }
    }
}
