//
//  DisplayView.swift
//  Seven Segment Display
//
//  Created by Quin’darius Lyles-Woods on 9/10/22.
//

import SwiftUI

struct DisplayView: View {
    @Binding var A: Bool
    @Binding var B: Bool
    @Binding var C: Bool
    @Binding var D: Bool
    @Binding var E: Bool
    @Binding var F: Bool
    @Binding var G: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            SegmentView()
                .frame(width: 40, height: 100)
                .rotationEffect(Angle(degrees: 90))
                .offset(y: 90)
                .foregroundColor(A ? nil : .clear)
            HStack (spacing: 60){
                
            SegmentView()
                .frame(width: 50, height: 100)
                .foregroundColor(F ? nil : .clear)
            SegmentView()
                .frame(width: 50, height: 100)
                .foregroundColor(B ? nil : .clear)
            }
            .offset(y: 45)
            SegmentView()
                .frame(width: 40, height: 100)
                .rotationEffect(Angle(degrees: 90))
                .foregroundColor(G ? nil : .clear)
            HStack (spacing: 65){
                
            SegmentView()
                .frame(width: 50, height: 100)
                .foregroundColor(E ? nil : .clear)
            SegmentView()
                .foregroundColor(C ? nil : .clear)
                .frame(width: 50, height: 100)
            }
            .offset(y: -45)
            SegmentView()
                .foregroundColor(D ? nil : .clear)
                .frame(width: 40, height: 100)
                .rotationEffect(Angle(degrees: 90))
                .offset(y: -90)
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    
    @State static var a = true
    @State static var b = true
    @State static var c = true
    @State static var d = false
    @State static var e = false
    @State static var f = false
    @State static var g = true
    static var previews: some View {
        DisplayView(A: $a, B: $b, C: $c, D: $d, E: $e, F: $f, G: $g)
    }
}
