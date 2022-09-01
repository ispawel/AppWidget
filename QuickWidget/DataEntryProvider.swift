//
//  DataEntryProvider.swift
//  QuickWidgetExtension
//
//  Created by Pavel Isakov on 21.08.2022.
//

import WidgetKit

struct WidgetEntryProvider: TimelineProvider {
    
    // Получение слепка при отсутствии данных
    func placeholder(in context: Context) -> DataEntry {
        DataEntry(date: Date(), kind: .empty)
    }
    
    // Получение слепка при выборе виджета
    func getSnapshot(in context: Context, completion: @escaping (DataEntry) -> Void) {
        let viewModel = WidgetViewViewModel(icon: "icon", name: "Name")
        let entry = DataEntry(date: Date(), kind: .haveData(viewModel))
        completion(entry)
    }
    
    // Получение слепка для отображениявиджета
    func getTimeline(in context: Context, completion: @escaping (Timeline<DataEntry>) -> Void) {
        let viewModel = WidgetViewViewModel(icon: "icon1", name: "Pavel")
        let entry = DataEntry(date: Date(), kind: .haveData(viewModel))
        let timeLine = Timeline(entries: [entry], policy: .never)
        completion(timeLine)
    }
}
