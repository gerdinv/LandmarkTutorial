//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Gerdin Ventura on 12/7/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            LazyVStack {
                ForEach(landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail()
                    } label: {
                        LandmarkRow(landmark: landmark)
                        Text(">")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 10)
                    }
                }.foregroundColor(.primary)
            }
            .padding(.top, 100)
            .padding(.leading, 5)
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
