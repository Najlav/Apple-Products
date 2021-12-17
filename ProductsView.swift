//
//  ProductsView.swift
//  AppleProducts
//
//  Created by Najla Alshehri on 15/12/2021.
//

import SwiftUI

struct ProductsView: View {
   let title = ["iPhone 13 Pro" ,"Pro Display XDR", "Apple Watch Series 7","AirPods (2generation)", "iPad Air" ,"Smart Folio for iPad mini"]
    
   let price = ["From $999 or $41.62/mo. per month for 24 mo","From $4999 or $416.58/mo" ,"From $399 or $16.62/mo" , "$21.50/mo.per month for 6 mo", "From $599 or $49.91/mo" ,"Smart Folio for iPad mini"]
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView {
                    VStack(alignment: .leading){
                        Text("Products")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Divider()
                        Image("Ad Card")
                        HStack{
                            Text("Take a look at what's new")
                                .font(.title2)
                                .fontWeight(.medium)
                            Spacer()
                            Text("See All")
                                .foregroundColor(Color.blue)
                        }.padding(.vertical)
                        
                        //loop products
                        ForEach(0..<6){num in
                            HStack{
                                ZStack{
                                    Image("Product-background")
                                    Image("Product\(num)")
                                }
                                VStack(alignment: .leading, spacing: 15){
                                    Text("\(title[num])")
                                        .fontWeight(.bold)
                                     
                                    Text("\(price[num])")
                                        .font(.caption)
                                        .foregroundColor(Color.gray).lineSpacing(8)
                                }
                                Spacer()
                                if(num == 2){
                                    NavigationLink(destination: SingleProductView()) {
                                        ZStack{
                                            Capsule()
                                                .fill(Color(red: 0.217, green: 0.212, blue: 0.233))
                                                .frame(width: 60, height: 40)
                                            Text("View")
                                                .foregroundColor(Color.blue)
                                        }
                                    }
                                }else{
                                    ZStack{
                                        Capsule()
                                            .fill(Color(red: 0.217, green: 0.212, blue: 0.233))
                                            .frame(width: 60, height: 40)
                                        Text("View")
                                            .foregroundColor(Color.blue).tag(1)
                                    }
                                }
                            }.padding(.bottom)
                        }
                        
                    }.padding()
                }
            }.navigationBarHidden(true)
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView().preferredColorScheme(.dark)
    }
}
