//
//  SegmentView.swift
//  Seven Segment Display
//
//  Created by Quin’darius Lyles-Woods on 9/10/22.
//

import SwiftUI

struct SegmentView: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX * ( 1 - sin(45)) , y: rect.maxY * sin(45)))
            path.addLine(to: CGPoint(x: rect.maxX * ( 1 - sin(45)), y: rect.maxY * (1 - sin(45))))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX * sin(45), y: rect.maxY * (1 - sin(45))))
            path.addLine(to: CGPoint(x: rect.maxX * sin(45), y: rect.maxY * sin(45)))
            
            path.closeSubpath()
        }
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView()
            .frame(
                width: 100,
                height: 200
            )
    }
}
