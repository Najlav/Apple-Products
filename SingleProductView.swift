//
//  SingleProductView.swift
//  AppleProducts
//
//  Created by Najla Alshehri on 15/12/2021
//

import SwiftUI

struct SingleProductView: View {
    private var numOfImages = 3;
    @State private var index = 0;
    
    func next(){
        withAnimation {
            index = (index % 3) + 1
        }
    }
    func previous(){
        withAnimation {
            index = index == 0 ?   2 :  index - 1
        }
    }

    var body: some View {
        VStack(alignment: .leading){
            // The product pic slider
            HStack{
                ZStack(alignment:.trailing){
                    TabView(selection: $index){
                        ForEach(0..<numOfImages){num in
                            Image("watch\(num)")
                                .previewLayout(.sizeThatFits).padding()
                        }
                    }.tabViewStyle(PageTabViewStyle())
                    HStack{
                        Button{
                           previous()
                        }label: {
                            ZStack{
                            Circle().fill(Color(red: 0.217, green: 0.212, blue: 0.233, opacity: 0.75)).frame(width: 60, height: 40)
                                Image(systemName:"chevron.left")
                                    .foregroundColor(Color.white)
                            }
                        }
                        Spacer()
                        Button{
                           next()
                        }label: {
                            ZStack{
                            Circle().fill(Color(red: 0.217, green: 0.212, blue: 0.233, opacity: 0.75)).frame(width: 60, height: 40)
                                Image(systemName:"chevron.right")
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                }
            }
            
            Text("Green Aluminum Case with Leather Link")
                .font(.title)
                .fontWeight(.bold).padding([.top, .leading, .trailing])
            
            Text("From $449 or $18.70/mo.")
                .foregroundColor(Color.gray)
                .padding(.leading).padding(.top, -9.0)
            
            Text("The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy.The Leather Link is made from handcrafted Roux Granada leather with no clasps or buckles, and has embedded magnets for a secure and adjustable fit.").padding()
            
            Link(destination: URL(string: "https://www.apple.com/shop/buy-watch/apple-watch/45mm-gps-green-aluminum-sequoia-green-leather-link-sm")!){Text("Learn more about Apple Watch Series 7" ).underline()}.padding()
                
        }.navigationTitle("Apple Watch Series 7 ").navigationBarTitleDisplayMode(.inline)
    }
}


struct SingleProductView_Previews: PreviewProvider {
    static var previews: some View {
        SingleProductView().preferredColorScheme(.dark)
    }
}
