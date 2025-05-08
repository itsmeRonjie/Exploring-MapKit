//
//  ZoomSliderView.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI

struct ZoomSliderView: View {
    @Binding var delta: Double
    
    @State private var currentOffset: CGSize = .zero
    @State private var endOffset: CGSize = .zero
    
    var offset: CGSize {
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height
        )
    }
    @State private var isPinned: Bool = false
    
    let lower = 0.05
    let upper = 0.3
    
    var body: some View {
        VStack {
            Text("Adjust Zoom Level")
                .font(.subheadline)
                .padding(.bottom, 5)
            
            Slider(
                value: $delta,
                in: lower...upper,
                label: { Text("Paris Landmark") }) {
                    Text("\(lower.formatted())")
                        .foregroundStyle(.secondary)
                } maximumValueLabel: {
                    Text("\(upper.formatted())")
                        .foregroundStyle(.secondary)
                }
                .tint(.purple)
                .padding(.horizontal)
            
            HStack {
                Text("Close-up")
                Spacer()
                Text("Wide View")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
            
            Button {
                isPinned.toggle()
                withAnimation {
                    endOffset = .zero
                    currentOffset = .zero
                }
            } label: {
                Label("Pin", systemImage: isPinned ? "pin.fill" : "pin")
                    .font(.caption)
                    .foregroundStyle(isPinned ? .blue : .secondary)
                    .padding(5)
                    .padding(.top, 5)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 10)
        .padding(.horizontal, 20)
        .padding(.bottom, 40)
        .offset(offset)
        .gesture(
            DragGesture()
                .onChanged { value in
                    withAnimation(.spring()) {
                        currentOffset = value.translation
                    }
                }
                .onEnded { _ in
                    if isPinned {
                        endOffset = CGSize(
                            width: currentOffset.width + endOffset.width,
                            height: currentOffset.height + endOffset.height
                        )
                        
                        currentOffset = .zero
                    } else {
                        withAnimation(.spring(.bouncy)) {
                            endOffset = .zero
                            currentOffset = .zero
                        }
                    }
                }
        )
    }
}

#Preview {
    ZoomSliderView(delta: .constant(0.1))
}
