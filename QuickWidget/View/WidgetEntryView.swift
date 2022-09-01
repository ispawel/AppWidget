//
//  WidgetEntryView.swift
//  QuickWidgetExtension
//
//  Created by Pavel Isakov on 27.08.2022.
//

import SwiftUI

struct WidgetEntryView: View {
    let entry: DataEntry
    
    var body: some View {
        switch entry.kind {
        case .haveData(let viewModel):
            WidgetView(viewModel: viewModel)
        case .empty:
            EmptyView()
        }
    }
}
