//
//  CardView.swift
//  OrderUpUnit2
//
//  Created by Dittrich, Jan - Student on 9/22/25.
//

import SwiftUI

struct CardView: View {
    @Binding var PeperoniPizzaAdded: Int
    @Binding var MargheritaPizzaAdded: Int
    @Binding var CheesePizzaAdded: Int
    @Binding var FunghiPizzaAdded: Int
    @Binding var CapricciosaPizzaAdded: Int
    
    var PeperoniPizzaPrice = 9.00
    var MargheritaPizzaPrice = 10.00
    var CheesePizzaPrice = 9.99
    var FunghiPizzaPrice = 8.50
    var CapricciosaPizzaPrice = 13.50
    
    var body: some View {
        VStack {
            Image ("Peperoni")
                .resizable()
                .frame(width: 300, height: 300)
            Text("Peperoni Pizza")
            Text ("\(String(format: "%.2f", PeperoniPizzaPrice)) $")
                Stepper("How many? Amount: \(PeperoniPizzaAdded)", value: $PeperoniPizzaAdded, in: 0...100)
        }
        .padding()
        .background (Color.orange)
        
        
        VStack {
            Image ("Margherita")
                .resizable()
                .frame(width: 350, height: 300)
            Text("Pizza Margherita")
            Text ("\(String(format: "%.2f", MargheritaPizzaPrice)) $")
            HStack {
                Stepper("How many? Amount: \(MargheritaPizzaAdded)", value: $MargheritaPizzaAdded, in: 0...100)
            }
        }
        .padding()
        .background (Color.orange)
        
        
        VStack {
            Image ("CheesePizza")
                .resizable()
                .frame(width: 300, height: 300)
            Text("Cheese Pizza")
            Text ("\(String(format: "%.2f", CheesePizzaPrice)) $")
            HStack {
                Stepper("How many? Amount: \(CheesePizzaAdded)", value: $CheesePizzaAdded, in: 0...100)
            }
        }
        .padding()
        .background (Color.orange)
        
        VStack {
            Image ("Funghi")
                .resizable()
                .frame(width: 370, height: 300)
            Text("Pizza Funghi")
            Text ("\(String(format: "%.2f", FunghiPizzaPrice)) $")
            HStack {
                Stepper("How many? Amount: \(FunghiPizzaAdded)", value: $FunghiPizzaAdded, in: 0...100)
            }
        }
        .padding()
        .background (Color.orange)
        
        VStack {
            Image ("Capricciosa")
                .resizable()
                .frame(width: 300, height: 300)
            Text("Pizza Capricciosa")
            Text ("\(String(format: "%.2f", CapricciosaPizzaPrice)) $")
            HStack {
                Stepper("How many? Amount: \(CapricciosaPizzaAdded)", value: $CapricciosaPizzaAdded, in: 0...100)
            }
        }
        .padding()
        .background (Color.orange)
    }
}

#Preview {
    @Previewable @State var PeperoniPizzaAdded = 0
    @Previewable @State var MargheritaPizzaAdded = 0
    @Previewable @State var CheesePizzaAdded = 0
    @Previewable @State var FunghiPizzaAdded = 0
    @Previewable @State var CapricciosaPizzaAdded = 0
    
    CardView(
        PeperoniPizzaAdded: $PeperoniPizzaAdded,
        MargheritaPizzaAdded: $MargheritaPizzaAdded,
        CheesePizzaAdded: $CheesePizzaAdded,
        FunghiPizzaAdded: $FunghiPizzaAdded,
        CapricciosaPizzaAdded: $CapricciosaPizzaAdded
    )
}

