import SwiftUI

import SwiftUI

struct VoltageView: View {
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
    var body: some View {
        ScrollView {
            Text("Voltage unknown (V = IR)")
                .font(.title)
            TextField("Current across component", value: $current, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Resistance of component", value: $resistance, format: .number)
                .textFieldStyle(.roundedBorder)
            let voltage = resistivity*lengthOfMaterial/crossSectionalArea
            HStack {
                Text("Resistance is")
                Text(String(resistance))
                    .bold()
                Text("Ω")
                    .bold()
            }
        }
    }
}
