//
//  ListView.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala on 11/29/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var colours = ColourModel()
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView{
            List{
                TextField("Nombre color", text: $searchText)
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Section(header:
                            Text("FlatUI")) {
                    ForEach(colours.flatUI.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColorView(colour: colour, pallete: "FlatUI"),
                            label: {
                                HStack{
                                    Image(systemName: colour.dark ? "lightbulb.fill" : "lightbulb")
                                    Text(colour.name)
                                        .foregroundColor(colour.dark ? .white : .black)
                                }
                        })
                            .listRowBackground(colour.colour)
                    }
                }
                Section(header:
                            Text("Spanish")) {
                    ForEach(colours.spanish.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColorView(colour: colour, pallete: "Spanish"),
                            label: {
                                HStack{
                                    Image(systemName: colour.dark ? "lightbulb.fill" : "lightbulb")
                                    Text(colour.name)
                                        .foregroundColor(colour.dark ? .white : .black)
                                }
                        })
                            .listRowBackground(colour.colour)
                    }
                }
                Section(header:
                            Text("American")) {
                    ForEach(colours.american.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColorView(colour: colour, pallete: "American"),
                            label: {
                                HStack{
                                    Image(systemName: colour.dark ? "lightbulb.fill" : "lightbulb")
                                    Text(colour.name)
                                        .foregroundColor(colour.dark ? .white : .black)
                                }
                        })
                            .listRowBackground(colour.colour)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitle("Colores", displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor.white)
            .toolbar(content:  {
                ToolbarItem(placement: .principal, content:{
                    Text("Colores")
                        .foregroundColor(.white)
                })
            })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


//To do:
//Cambiar el tipo de letra a los elementos de la lista y a los titulos de las secciones
//Utilizar un icono a la izquierda lightbulb.fill cuando sea isDark == falso, lightbulb cuando isDark == true
//Cambiar el color de cada uno de los renglones con el color correspondiente
