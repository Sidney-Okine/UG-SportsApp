//
//  NewsListItemView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct NewsListItemView: View {
  // MARK: - PROPERTIES
  
  let news: Updates

  // MARK: - BODY

  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(news.image)
        .resizable()
        .scaledToFill()
        .frame(width: 90, height: 90)
        .clipShape(
          RoundedRectangle(cornerRadius: 12)
        )
      
      VStack(alignment: .leading, spacing: 8) {
        Text(news.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)
        
        Text(news.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .padding(.trailing, 8)
      } //: VSTACK
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct NewsListItemView_Previews: PreviewProvider {
  static let news: [Updates] = Bundle.main.decode("updates.json")
  
  static var previews: some View {
    NewsListItemView(news: news[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
