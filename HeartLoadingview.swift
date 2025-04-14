//
//  HeartLoadingview.swift
//  jar of us
//
//  Created by Zerda Yilmaz on 19.02.2025.
//

import SwiftUI

struct HeartLoadingView: View {
    @State private var progress: Int = 0
    let totalHearts = 6
    
    var body: some View {
        ZStack {
            Color.pastelPink
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                HStack {
                    ForEach(0..<totalHearts, id: \ .self) { index in
                        if index < progress {
                            Image("pixel.heart")
                                .resizable()
                                .frame(width: 45, height: 50) // Dolu kalp için boyut
                        } else {
                            Image("pixel.heart.empty")
                                .resizable()
                                .frame(width: 40, height: 40) // Boş kalp için boyut
                        }
                    }
                }
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                        if progress < totalHearts {
                            progress += 1
                        } else {
                            progress = 0
                        }
                    }
                }
            }
        }
    }
    }
}


struct HeartLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeartLoadingView()
    }
}
