//
//  InsetGalleryView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct InsetGalleryView: View {
  // MARK: - PROPERTIES
  
  let news: Updates
  
  // MARK: - BODY

  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 15) {
        ForEach(news.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .cornerRadius(12)
        } //: LOOP
      } //: HSTACK
    } //: SCROLL
  }
}

// MARK: - PREVIEW

struct InsetGalleryView_Previews: PreviewProvider {
  static let news: [Updates] = Bundle.main.decode("updates.json")
  
  static var previews: some View {
    InsetGalleryView(news: news[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
