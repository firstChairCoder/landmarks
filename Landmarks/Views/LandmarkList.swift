//
//  LandmarkList.swift
//  Landmarks
//
//  Created by macbook on 09/10/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {
            landmark in LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
