//
//  ContentView.swift
//  OrderUpUnit2
//
//  Created by Dittrich, Jan - Student on 9/22/25.
//

import SwiftUI

struct ContentView: View {
    @State var PeperoniPizzaPrice = 9.00
    @State var PeperoniPizzaAdded = 0
    @State var MargheritaPizzaPrice = 10.00
    @State var MargheritaPizzaAdded = 0
    @State var CheesePizzaPrice = 9.99
    @State var CheesePizzaAdded = 0
    @State var FunghiPizzaPrice = 8.50
    @State var FunghiPizzaAdded = 0
    @State var CapricciosaPizzaPrice = 13.50
    @State var CapricciosaPizzaAdded = 0
    
    var body: some View {
        NavigationStack{
            VStack{
                Text ("Welcome to Order Up!")
                ScrollView {
                    VStack{
                        CardView(PeperoniPizzaAdded: $PeperoniPizzaAdded, MargheritaPizzaAdded: $MargheritaPizzaAdded, CheesePizzaAdded: $CheesePizzaAdded, FunghiPizzaAdded: $FunghiPizzaAdded, CapricciosaPizzaAdded: $CapricciosaPizzaAdded)
                        
                        
                    }
                }
            
            }
            .navigationTitle("Order Up!")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        destination: CartView(
                            PeperoniPizzaAdded: $PeperoniPizzaAdded,
                            MargheritaPizzaAdded: $MargheritaPizzaAdded,
                            CheesePizzaAdded: $CheesePizzaAdded,
                            FunghiPizzaAdded: $FunghiPizzaAdded,
                            CapricciosaPizzaAdded: $CapricciosaPizzaAdded,
                            PeperoniPizzaPrice: PeperoniPizzaPrice,
                            MargheritaPizzaPrice: MargheritaPizzaPrice,
                            CheesePizzaPrice: CheesePizzaPrice,
                            FunghiPizzaPrice: FunghiPizzaPrice,
                            CapricciosaPizzaPrice: CapricciosaPizzaPrice
                        )
                    ) {
                        ZStack(alignment: .topTrailing) {
                            Image(systemName: "cart")
                                .font(.title2)
                            let totalItems =
                            PeperoniPizzaAdded +
                            MargheritaPizzaAdded +
                            CheesePizzaAdded +
                            FunghiPizzaAdded +
                            CapricciosaPizzaAdded
                            if totalItems > 0 {
                                Text("\(totalItems)")
                                    .font(.caption2)
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .background(Color.red)
                                    .clipShape(Circle())
                                    .offset(x: 10, y: -10)
                            }
                        }
                    }
                }
            }

        }
    }
}
#Preview {
    ContentView()
}
