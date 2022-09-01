//
//  EmptyView.swift
//  QuickWidgetExtension
//
//  Created by Pavel Isakov on 21.08.2022.
//

import WidgetKit
import SwiftUI

struct EmptyView: View {
    var body: some View {
        Text("No data")
    }
}
struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView().previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
