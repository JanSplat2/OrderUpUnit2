//
//  CheckoutView.swift
//  OrderUpUnit2
//
//  Created by Dittrich, Jan - Student on 9/23/25.
//

import SwiftUI

struct CheckoutView: View {
    var totalWithTaxes: Double
    
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var address: String = ""
    @State private var delivery: Bool = false
    @State private var paymentType: String = "Apple Pay"
    let paymentOptions = ["Apple Pay", "Pay at Store"]
    
    var finalTotal: Double {
        delivery ? totalWithTaxes * 1.10 : totalWithTaxes
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("📝 Checkout")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 20)
            
            TextField("Your Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Phone Number", text: $phone)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .keyboardType(.phonePad)
            
            Toggle("Delivery?", isOn: $delivery)
                .padding(.horizontal)
            
            if delivery {
                TextField("Delivery Address", text: $address)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
            }
            
            Divider().padding(.vertical, 10)
            
            Text("Total: $\(String(format: "%.2f", finalTotal))")
                .font(.title2)
                .bold()
            
            Picker("Payment Method", selection: $paymentType) {
                ForEach(paymentOptions, id: \.self) { option in
                    Text(option)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            Spacer()
            
            NavigationLink(
                destination: ConfirmationView(
                    name: name,
                    phone: phone,
                    address: delivery ? address : nil,
                    delivery: delivery,
                    finalTotal: finalTotal,
                    paymentType: paymentType
                )
            ) {
                Text("✅ Confirm Order")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(name.isEmpty || phone.isEmpty || (delivery && address.isEmpty))
            .padding(.horizontal)
        }
        
        .padding()
    }
}

#Preview {
    CheckoutView(totalWithTaxes: 54.99) // Example value
}
