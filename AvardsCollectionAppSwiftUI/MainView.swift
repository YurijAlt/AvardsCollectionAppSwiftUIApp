//
//  MainView.swift
//  AvardsCollectionAppSwiftUI
//
//  Created by SummeR on 18.06.2021.
//

import SwiftUI

struct MainView: View {
    
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: {showAward.toggle() }) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showAward ? 0 : 360))
                        .animation(.default)
                }
            }
            Spacer()
            GradientRectangles(width: 200, height: 200)
                .offset(x: showAward ? 0 : UIScreen.main.bounds.width)
                .animation(.default)

            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
