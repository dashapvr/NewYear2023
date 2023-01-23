//
//  Ball.swift
//  NewYear2023
//
//  Created by Дарья Пивовар on 23.01.2023.
//

import SwiftUI

struct Ball: View {
    
    let color: Color
    let strokeColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack(alignment: .top) {
                Rectangle()
                    .strokeBorder(strokeColor, lineWidth: 2)
                    .cornerRadius(2)
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                    .offset(y: -geometry.size.width * 0.18)
                    .zIndex(4)
                
                Rectangle()
                    .fill(color)
                    .cornerRadius(2)
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                    .offset(y: -geometry.size.width * 0.18)
                    .zIndex(3)
                
                Circle()
                    .strokeBorder(strokeColor, lineWidth: 2)
                    .zIndex(2)
                
                Circle()
                    .fill(color)
                    .zIndex(1)
            }
        }
    }
}

struct Ball_Previews: PreviewProvider {
    static var previews: some View {
        Ball(color: .yellow, strokeColor: .orange)
            .frame(width: 50, height: 50)
    }
}
