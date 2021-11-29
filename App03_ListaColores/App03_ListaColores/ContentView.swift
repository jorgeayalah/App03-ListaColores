//
//  ContentView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Hola crayola")
            }
            .navigationBarTitle("Colores", displayMode: .inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
