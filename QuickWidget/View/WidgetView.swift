//
//  WidgetView.swift
//  QuickWidgetExtension
//
//  Created by Pavel Isakov on 21.08.2022.
//

import WidgetKit
import SwiftUI

struct WidgetViewViewModel {
    let icon: String
    let name: String
}
struct WidgetView: View {
    let viewModel: WidgetViewViewModel
    let deepLink = URL(string: "appWidget://")
    var body: some View {
        VStack(spacing: 0.1){
            HStack(spacing: 38.0){
                 Image("icon1")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .widgetURL(deepLink)
                        .onTapGesture {
                            print("printing...")
                        }
                Image("icon2")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .widgetURL(deepLink)
                Image("icon3")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                Image("icon4")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
            }
            
            HStack( spacing: 54.0){
                Group{
                    Text(viewModel.name)
                    Text(viewModel.name)
                    Text(viewModel.name)
                    Text(viewModel.name)
                }
                .padding(.bottom, 6.0)
                .font(.system(size: 14))
            }
            .frame(width: 330.0)
            
            HStack(spacing: 38.0){
                Image("icon5")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                
                Image("icon6")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                
                Image("icon7")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                
                Image("icon8")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
            }
            HStack( spacing: 54.0){
                Group{
                    Text(viewModel.name)
                    Text(viewModel.name)
                    Text(viewModel.name)
                    Text(viewModel.name)
                }
                .font(.system(size: 14))
            }
            .frame(width: 330.0)
        }
    }
}
struct WidgetView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = WidgetViewViewModel(icon: "icon1", name: "Pavel")
        WidgetView(viewModel: viewModel)
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
