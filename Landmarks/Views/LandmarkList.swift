//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Gerdin Ventura on 12/7/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        LazyVStack {
            ForEach(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
        
//        List(landmarks, id: \.id) { landmark in
//                    LandmarkRow(landmark: landmark)
//        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
