import SwiftUI

import SwiftUI

struct ResistanceView: View {
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
    var body: some View {
        ScrollView {
            Text("Resistance unknown (R = pL/A)")
                .font(.title)
            TextField("Resistivity", value: $resistivity, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Length", value: $lengthOfMaterial, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Cross-sectional area", value: $crossSectionalArea, format: .number)
                .textFieldStyle(.roundedBorder)
            let resistance = resistivity*lengthOfMaterial/crossSectionalArea
            HStack {
                Text("Resistance is")
                Text(String(resistance))
                    .bold()
                Text("Ω")
                    .bold()
            }
            
            Text("Resistance unknown (R = V/I)")
                .font(.title)
                .padding()
                .padding()
            TextField("Voltage across component", value: $voltage, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Current across component", value: $current, format: .number)
                .textFieldStyle(.roundedBorder)
            let resistance2 = voltage/current
            HStack {
                Text("Resistance is")
                Text(String(resistance2))
                    .bold()
                Text("Ω")
                    .bold()
            }
        }
    }  
}
