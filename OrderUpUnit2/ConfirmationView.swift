//
//  ConfirmationView.swift
//  OrderUpUnit2
//
//  Created by Dittrich, Jan - Student on 9/23/25.
//

import SwiftUI

struct ConfirmationView: View {
    var name: String
    var phone: String
    var address: String?
    var delivery: Bool
    var finalTotal: Double
    var paymentType: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text("🎉 Order Confirmed!")
                .font(.largeTitle)
                .bold()
            
            Text("Thank you, \(name)!")
            Text("Phone: \(phone)")
            
            if delivery, let addr = address, !addr.isEmpty {
                Text("Delivery Address: \(addr)")
            } else {
                Text("Pickup at Store")
            }
            
            Text("Payment: \(paymentType)")
            Text("Total Paid: $\(String(format: "%.2f", finalTotal))")
                .font(.title2)
                .bold()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ConfirmationView(
        name: "Alex Johnson",
        phone: "555-123-4567",
        address: "123 Pizza Street",
        delivery: true,
        finalTotal: 42.75,
        paymentType: "Apple Pay"
    )
}
