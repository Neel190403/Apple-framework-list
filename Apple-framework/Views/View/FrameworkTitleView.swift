//
//  FrameworkTitleView.swift
//  Apple-framework
//
//  Created by Neel Pandya on 12/02/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
        
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
