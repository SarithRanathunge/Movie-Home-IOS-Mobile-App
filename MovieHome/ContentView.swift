//
//  ContentView.swift
//  MovieHome
//
//  Created by Sarith Ranathunge on 2026-01-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab(Constants.homeString,
                systemImage: Constants.homeIconString){
                HomeView()
            }
            Tab(Constants.upcomingString,
                systemImage: Constants.upcomingIconString){
                UpcomingView()
            }
            Tab(Constants.searchString,
                systemImage: Constants.searchIconString){
                SearchView()
            }
            Tab(Constants.downloadString,
                systemImage: Constants.downloadIconString){
                DownloadView()
            }
        }
        .onAppear{
            if let config = APIConfig.shared {
                print(config.tmdbAPIKey)
                print(config.tmdbBaseURL)
            }
        }
    }
}

#Preview {
    ContentView()
}
