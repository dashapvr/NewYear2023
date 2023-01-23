//
//  Garland.swift
//  NewYear2023
//
//  Created by Дарья Пивовар on 23.01.2023.
//

import SwiftUI

struct Garland: Shape {
    
    let size: CGFloat
    let frequency: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { p in
            p.move(to: .init(x: rect.minX, y: rect.minY))
            p.addQuadCurve(to: .init(x: rect.maxX, y: rect.minY), control: .init(x: rect.midX, y: rect.maxY))
            p.move(to: .init(x: rect.maxX, y: rect.minY))
        }
        .strokedPath(StrokeStyle(lineWidth: size, lineCap: .round, lineJoin: .round, dash: [1, frequency], dashPhase: 60.0))
    }
    
   
}

struct Garland_Previews: PreviewProvider {
    static var previews: some View {
       
        VStack {
            Garland(size: 13, frequency: 22)
                .fill(.cyan)
                .frame(width: 250, height: 80)
            
            Garland(size: 13, frequency: 35)
                .fill(.cyan)
                .frame(width: 250, height: 80)
            
            Garland(size: 13, frequency: 55)
                .fill(.cyan)
                .frame(width: 250, height: 80)
        }
    }
}
