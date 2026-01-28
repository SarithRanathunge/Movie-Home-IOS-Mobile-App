//
//  UpcommingView.swift
//  MovieHome
//
//  Created by Sarith Ranathunge on 2026-01-28.
//

import SwiftUI

struct UpcomingView: View {
    let viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            GeometryReader {geo in
                switch viewModel.upcomingStatus {
                case .notStarted:
                    EmptyView()
                case .fetching:
                    ProgressView()
                        .frame(width: geo.size.width, height: geo.size.height)
                case .success:
                    VerticalListView(titles: viewModel.upComingMovies, canDelete: false)
                case .failed(let underlyinngError):
                    Text(underlyinngError.localizedDescription)
                        .errorMessage()
                            .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .task {
                await viewModel.getUpcomingMovies()
            }
        }
    }
}

#Preview {
    UpcomingView()
}
