//
//  ExternalWeblinkView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let news : Updates
  // MARK: - BODY

  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("UG Sports Directorate")
        Spacer()
        
        Group {
          Image(systemName: "arrow.up.right.square")
          
          Link("More", destination: (URL(string: news.link) ?? URL(string: "https://www.ug.edu.gh/sports/"))!)
        }
        .foregroundColor(.accentColor)
      } //: HSTACK
    } //: BOX
  }
}

// MARK: - PREIVEW

struct ExternalWeblinkView_Previews: PreviewProvider {
  static let news: [Updates] = Bundle.main.decode("updates.json")
  
  static var previews: some View {
    ExternalWeblinkView(news: news[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
