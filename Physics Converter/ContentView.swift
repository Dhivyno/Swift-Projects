import SwiftUI

struct ContentView: View {
    @State var resistance = 0.00
    @State var current = 0.00
    @State var chargeDensity = 0.00
    @State var crossSectionalArea = 0.00
    @State var driftVelocity = 0.00
    @State var voltage = 0.00
    @State var relativeChargeOfChargeCarriers = 0.00
    @State var resistivity = 0.00
    @State var lengthOfMaterial = 0.00
    
    var body: some View {
        TabView {
            ResistanceView()
                .tabItem{
                    Label("Resistance", systemImage: "person")
                }
            CurrentView()
                .tabItem {
                    Label("Current", systemImage: "pencil.tip")
                }
            VoltageView()
                .tabItem {
                    Label("Voltage", systemImage: "person")
                }
        }
    }
}
