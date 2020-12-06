//
//  Keys.swift
//  Brickie
//
//  Created by Leo on 28/11/2020.
//  Copyright © 2020 Homework. All rights reserved.
//

import SwiftUI
enum Settings {
    static let setsListSorter = "setsListSorter"
    static let figsListSorter = "figsListSorter"
    static let rootTabSelected = "tabSelected"
}
enum SheetType  {
    case scanner
    case settings
}
//import CodeScanner
enum LegoListFilter : String, CaseIterable{
    case all
    case wanted
    case owned
    
    var local : LocalizedStringKey {
        switch self {
        case .all:return "filter.all"
        case .wanted:return "filter.wanted"
        case .owned:return "filter.owned"
        }
    }
    var systemImage : String {
        switch self {
        case .all:return "number"
        case .wanted:return "clock"
        case .owned:return "textformat.abc"
        }
    }
    
    static let home : [LegoListFilter] = [.all,.wanted]
}

enum LegoListSorter : String, CaseIterable{
    case `default` = "default"
    case number = "number"
    case year = "year"
    case alphabetical = "alphabetical"
    case rating = "rating"
    case piece = "piece"
    case price = "price"
    
    var local : LocalizedStringKey {
        switch self {
        case .number:return "sorter.number"
        case .year:return "sorter.year"
        case .alphabetical:return "sorter.alphabetical"
        case .rating:return "sorter.rating"
        case .piece:return "sorter.piece"
        case .price:return "sorter.price"
        default: return "sorter.default"
        }
    }
    var systemImage : String {
        switch self {
        case .number:return "number"
        case .year:return "clock"
        case .alphabetical:return "textformat.abc"
        case .rating:return "star.leadinghalf.fill"
        case .piece:return "puzzlepiece"
        case .price:return "dollarsign.circle"
        default: return "staroflife"
        }
    }
}

