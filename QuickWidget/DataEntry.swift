//
//  DataEntry.swift
//  AppWidget
//
//  Created by Pavel Isakov on 21.08.2022.
//

import WidgetKit

struct DataEntry: TimelineEntry {
    var date: Date
    let kind: Kind
    
    enum Kind {
        case haveData(WidgetViewViewModel)
        case empty
    }
}
