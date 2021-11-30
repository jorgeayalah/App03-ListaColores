//
//  ListView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var colours = ColourModel()
    
    var body: some View {
        NavigationView{
            List{
                Section(header:
                            Text("FlatUI")) {
                    ForEach(colours.flatUI) { colour in
                        NavigationLink(
                            destination: ColorView(text: colour.name),
                            label: {
                                Text(colour.name)
                        })
                    }
                }
                Section(header:
                            Text("Spanish")) {
                    ForEach(colours.spanish ) { colour in
                        NavigationLink(
                            destination: ColorView(text: colour.name),
                            label: {
                                Text(colour.name)
                        })
                    }
                }
                Section(header:
                            Text("American")) {
                    ForEach(colours.american) { colour in
                        NavigationLink(
                            destination: ColorView(text: colour.name),
                            label: {
                                Text(colour.name)
                        })
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitle("Colores", displayMode: .inline)
            .navigationBarColor(UIColor(.blue), UIColor.white)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

