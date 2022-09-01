//
//  WidgetOption.swift
//  QuickWidgetExtension
//
//  Created by Pavel Isakov on 21.08.2022.
//

import SwiftUI
import WidgetKit

@main
struct WidgetOption: Widget {
    let kind = "My Widget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: WidgetEntryProvider()) { entry in
            WidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Widget To App")
        .description("Quick acces to app")
        .supportedFamilies([.systemMedium])
    }
}
