//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sonu Martin on 2024-05-02.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewmodel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    
    
    let framework: Framework
    
    var body: some View {
      
            VStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
        }
    }

