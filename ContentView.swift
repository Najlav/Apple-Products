//
//  ContentView.swift
//  AppleProducts
//
//  Created by Najla Alshehri on 15/12/2021
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        Text("Today View")
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search View")
    }
}


struct ContentView: View {
    @State private var selection = 2
    var body: some View {
        TabView(selection: $selection){
            TodayView().preferredColorScheme(.dark)
                .tabItem{
                    Image(systemName:"doc.text.image")
                    Text("Today")
                }.tag(1)
            ProductsView().preferredColorScheme(.dark)
                .tabItem{
                    Image(systemName:"square.stack.3d.up.fill")
                    Text("Products")
                }.tag(2)
            SearchView().preferredColorScheme(.dark)
                .tabItem{
                    Image(systemName:"magnifyingglass")
                    Text("Search")
                }.tag(3)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}



