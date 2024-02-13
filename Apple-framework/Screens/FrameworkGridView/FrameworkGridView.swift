//
//  FrameworkGridView.swift
//  Apple-framework
//
//  Created by Neel Pandya on 12/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
                        List {
                            ForEach(MockData.frameworks) { framework in
                                NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                                    FrameworkTitleView(framework: framework)
                                        }
                                
                            }
                        }
                    .navigationTitle("🍎 Frameworks")
                    }
                    .accentColor(Color(.label))
        }
        ///lazy grids means whatever is required on the screen, only that much part will get rendered
    }


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

