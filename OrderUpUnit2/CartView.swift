//
//  CartView.swift
//  OrderUpUnit2
//
//  Created by Dittrich, Jan - Student on 9/22/25.
//

import SwiftUI

struct CartView: View {
    @Binding var PeperoniPizzaAdded: Int
    @Binding var MargheritaPizzaAdded: Int
    @Binding var CheesePizzaAdded: Int
    @Binding var FunghiPizzaAdded: Int
    @Binding var CapricciosaPizzaAdded: Int
    
    var PeperoniPizzaPrice: Double
    var MargheritaPizzaPrice: Double
    var CheesePizzaPrice: Double
    var FunghiPizzaPrice: Double
    var CapricciosaPizzaPrice: Double
    
    var totalPrice: Double {
        (Double(PeperoniPizzaAdded) * PeperoniPizzaPrice) +
        (Double(MargheritaPizzaAdded) * MargheritaPizzaPrice) +
        (Double(CheesePizzaAdded) * CheesePizzaPrice) +
        (Double(FunghiPizzaAdded) * FunghiPizzaPrice) +
        (Double(CapricciosaPizzaAdded) * CapricciosaPizzaPrice)
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🛒 Your Cart")
                .font(.title)
                .padding(.bottom, 20)
            
            if totalPrice > 0 {
                if PeperoniPizzaAdded > 0 {
                    Text("Peperoni x\(PeperoniPizzaAdded) - $\(String(format: "%.2f", Double(PeperoniPizzaAdded) * PeperoniPizzaPrice))")
                }
                if MargheritaPizzaAdded > 0 {
                    Text("Margherita x\(MargheritaPizzaAdded) - $\(String(format: "%.2f", Double(MargheritaPizzaAdded) * MargheritaPizzaPrice))")
                }
                if CheesePizzaAdded > 0 {
                    Text("Cheese x\(CheesePizzaAdded) - $\(String(format: "%.2f", Double(CheesePizzaAdded) * CheesePizzaPrice))")
                }
                if FunghiPizzaAdded > 0 {
                    Text("Funghi x\(FunghiPizzaAdded) - $\(String(format: "%.2f", Double(FunghiPizzaAdded) * FunghiPizzaPrice))")
                }
                if CapricciosaPizzaAdded > 0 {
                    Text("Capricciosa x\(CapricciosaPizzaAdded) - $\(String(format: "%.2f", Double(CapricciosaPizzaAdded) * CapricciosaPizzaPrice))")
                }
                
                Divider()
                    .padding(.vertical, 10)
                
                Text("Total(Without Taxes): $\(String(format: "%.2f", totalPrice))")
                    .font(.title2)
                    .bold()
                Text("Total(after Taxes): $\(String(format: "%.2f", totalPrice*1.085))")
                    .font(.title)
                    .bold()
            } else {
                Text("Your cart is empty 🥲")
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var PeperoniPizzaAdded = 2
    @Previewable @State var MargheritaPizzaAdded = 1
    @Previewable @State var CheesePizzaAdded = 0
    @Previewable @State var FunghiPizzaAdded = 3
    @Previewable @State var CapricciosaPizzaAdded = 0
    
    return CartView(
        PeperoniPizzaAdded: $PeperoniPizzaAdded,
        MargheritaPizzaAdded: $MargheritaPizzaAdded,
        CheesePizzaAdded: $CheesePizzaAdded,
        FunghiPizzaAdded: $FunghiPizzaAdded,
        CapricciosaPizzaAdded: $CapricciosaPizzaAdded,
        PeperoniPizzaPrice: 9.00,
        MargheritaPizzaPrice: 10.00,
        CheesePizzaPrice: 9.99,
        FunghiPizzaPrice: 8.50,
        CapricciosaPizzaPrice: 13.50
    )
}

