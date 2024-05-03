//
//  FrameWorkDetailedView.swift
//  Apple-Frameworks
//
//  Created by Sonu Martin on 2024-05-02.
//

import SwiftUI

struct FrameWorkDetailedView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label ))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                    
                }
            }
            .padding()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
              AFButton(title: "Learn more")
                    
            }
        }
    }
}

struct FrameWorkDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkDetailedView(framework: MockData.sampleFramework)
    }
}
