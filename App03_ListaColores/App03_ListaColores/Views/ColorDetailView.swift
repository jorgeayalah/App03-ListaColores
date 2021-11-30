//
//  ColorDetailView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ColorDetailView: View {
    var body: some View {
        Text("Detalle del color")
            .navigationBarTitle("Detalle Color", displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor.white)
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView()
    }
}
