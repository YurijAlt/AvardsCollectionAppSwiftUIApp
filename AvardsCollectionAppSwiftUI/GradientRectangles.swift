//
//  GradientRectangles.swift
//  AvardsCollectionAppSwiftUI
//
//  Created by SummeR on 18.06.2021.
//

import SwiftUI

struct GradientRectangles: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            ForEach(0..<3) { iteration in
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.green, .blue]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
            }
            Image(systemName: "airplane")
                .resizable()
                .rotationEffect(.degrees((-90)))
                .opacity(0.4)
        }
        .frame(width: width, height: height)
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles(width: 200, height: 200)
    }
}
