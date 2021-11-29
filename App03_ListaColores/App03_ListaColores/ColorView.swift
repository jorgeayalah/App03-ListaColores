//
//  ColorView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        NavigationLink(
            
            destination: ColorDetailView(),
            label: {
                Text("Ir al detalle del color")
            }
        )
        .navigationBarTitle("Color", displayMode: .inline)
        
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
