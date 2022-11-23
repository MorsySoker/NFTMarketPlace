//
//  BackNavigationBarView.swift
//  Leedo
//
//  Created by MorsyElsokary on 03/03/2022.
//

import SwiftUI

struct BackNavigationBarView: View {
    
    // MARK: - Properties
    
    // Animation State
    @State var isAnimated: Bool = false
    
    @State var isFavoraite: Bool = false
    
    // MARK: - View Compnent
    
    private var animatedLogo: some View {
        Text("Market OverView")
            .frame(height: 32.5)
            .opacity(isAnimated ? 1 : 0)
            .offset(y: isAnimated ? 0: -120)
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
    private var animatedNavActionIcons: some View {
        HStack(spacing: 10) {
            Button { isFavoraite.toggle() } label: {
                Image(systemName: "star.fill")
                .frame(width: 22.18, height: 24.74)
                .foregroundColor(isFavoraite ? .pink : .white)
            }
            
            Button {  } label: {
                Image(systemName: "arrow.turn.up.right")
                .frame(width: 22.18, height: 24.74) }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .opacity(isAnimated ? 1 : 0)
        .offset(x: isAnimated ? 0 : 120, y: 0)
        .padding(.trailing, 20)
        .font(.rubikMedium(20))
    }
    
    private var navBackButton: some View {
        Button {  } label: {
            Image(systemName: "chevron.left")
            .frame(width: 22.18, height: 24.74) }
        .frame(maxWidth: .infinity, alignment: .leading)
        .opacity(isAnimated ? 1 : 0)
        .padding(.leading, 20)
        .font(.rubikMedium(20))
    }
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            navBackButton
            
            animatedLogo
            
            animatedNavActionIcons
        }
        .font(.rubikMedium(15))
        .foregroundColor(.white)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60)
        .background(Color.black)
        .onAppear { withAnimation(Animation.easeIn(duration: 0.3)) { isAnimated.toggle() } }
    }
}

struct BackNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        BackNavigationBarView()
    }
}
