//
//  InsetFactView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct InsetFactView: View {
  // MARK: - PROPERTIES
  
  let news: Updates

  // MARK: - BODY

  var body: some View {
    GroupBox {
      TabView {
        ForEach(news.fact, id: \.self) { item in
          Text(item)
        }
      } //: TABS
      .tabViewStyle(PageTabViewStyle())
      .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    } //: BOX
  }
}

// MARK: - PREVIEW

struct InsetFactView_Previews: PreviewProvider {
  static let news: [Updates] = Bundle.main.decode("updatess.json")
  
  static var previews: some View {
    InsetFactView(news: news[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
