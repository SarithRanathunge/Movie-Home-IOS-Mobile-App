//
//  DownloadView.swift
//  MovieHome
//
//  Created by Sarith Ranathunge on 2026-01-28.
//

import SwiftUI
import SwiftData

struct DownloadView: View {
    @Query(sort: \Title.title) var savedTitle: [Title]
    
    var body: some View {
        NavigationStack{
            if savedTitle.isEmpty{
                Text("No Downloads")
                    .padding()
                    .font(.title3)
                    .bold()
            } else{
                VerticalListView(titles: savedTitle, canDelete: true)
            }
        }
    }
}

#Preview {
    DownloadView()
}
