//
//  CreditsView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
  Copyright © 2022
  All right reserved
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    } //: VSTACK
    .padding()
    .opacity(0.4)
  }
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

