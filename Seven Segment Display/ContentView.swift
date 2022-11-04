//
//  ContentView.swift
//  Seven Segment Display
//
//  Created by Quin’darius Lyles-Woods on 9/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var a = false
    @State var b = false
    @State var c = false
    @State var d = false
    @State var e = false
    @State var f = false
    @State var g = false
    var body: some View {
        VStack {
            
        HStack {
            
            Button {
                a.toggle()
            } label: {
                switch a {
                case true:
                    Image(systemName: "a.circle.fill")
                case false:
                    Image(systemName: "a.circle")
                }
            }
            
            Button {
                b.toggle()
            } label: {
                switch b {
                case true:
                    Image(systemName: "b.circle.fill")
                case false:
                    Image(systemName: "b.circle")
                }
            }
            Button {
                c.toggle()
            } label: {
                switch c {
                case true:
                    Image(systemName: "c.circle.fill")
                case false:
                    Image(systemName: "c.circle")
                }
            }
        } // HStack
        .font(.system(size: 50))
            
        DisplayView(A: $a, B: $b, C: $c, D: $d, E: $e, F: $f, G: $g)
        HStack {
            
            Button {
                d.toggle()
            } label: {
                switch d {
                case true:
                    Image(systemName: "d.circle.fill")
                case false:
                    Image(systemName: "d.circle")
                }
            }
            
            Button {
                e.toggle()
            } label: {
                switch e {
                case true:
                    Image(systemName: "e.circle.fill")
                case false:
                    Image(systemName: "e.circle")
                }
            }
            Button {
                f.toggle()
            } label: {
                switch f {
                case true:
                    Image(systemName: "f.circle.fill")
                case false:
                    Image(systemName: "f.circle")
                }
            }
            Button {
                g.toggle()
            } label: {
                switch g {
                case true:
                    Image(systemName: "g.circle.fill")
                case false:
                    Image(systemName: "g.circle")
                }
            }
        } // HStack
        .font(.system(size: 50))
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
