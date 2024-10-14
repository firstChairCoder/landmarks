//
//  ProfileHost.swift
//  Landmarks
//
//  Created by macbook on 11/10/2024.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environmentObject(ModelData())
}
