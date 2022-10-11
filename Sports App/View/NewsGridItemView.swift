//
//  NewsGridItemView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct NewsGridItemView: View {
  // MARK: - PROPERTIES
  
  let news: Updates

  // MARK: - BODY

  var body: some View {
    Image(news.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

// MARK: - PREVIEW

struct NewsGridItemView_Previews: PreviewProvider {
  static let news: [Updates] = Bundle.main.decode("updates.json")
  
  static var previews: some View {
    NewsGridItemView(news: news[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
