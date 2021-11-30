//
//  ColorModel.swift
//  App03_ListaColores
//
//  Created by Jorge Ayala en 11/30/21.
//

import SwiftUI

class ColourModel: ObservableObject{
    
    @Published var flatUI = [Colour]()
    @Published var spanish = [Colour]()
    @Published var american = [Colour]()
    
    init(){
        
        loadColours()
    }
    
    func loadColours(){
        flatUI.append(contentsOf: Colour.flatUI)
        spanish.append(contentsOf: Colour.spanish)
        american.append(contentsOf: Colour.american)
    }
}
