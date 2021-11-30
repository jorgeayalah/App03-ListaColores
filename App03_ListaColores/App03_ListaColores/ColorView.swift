//
//  ColorView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ColorView: View {
    var text: String
    var body: some View {
        
        NavigationLink(
            
            destination: ColorDetailView(),
            label: {
                Text(text)
            }
        )
        .navigationBarTitle("Color", displayMode: .inline)
        .navigationBarColor(UIColor(.blue), UIColor.white)
        
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(text: "Hola")
    }
}
