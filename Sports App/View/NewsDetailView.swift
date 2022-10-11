//
//  NewsDetailView.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import SwiftUI

struct NewsDetailView: View {
    let news : Updates
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 20) {
            // HERO IMAGE
            Image(news.image)
              .resizable()
              .scaledToFit()
            
            // TITLE
            Text(news.name.uppercased())
              .font(.largeTitle)
              .fontWeight(.heavy)
              .multilineTextAlignment(.center)
              .padding(.vertical, 8)
              .foregroundColor(.primary)
              .background(
                Color.accentColor
                  .frame(height: 6)
                  .offset(y: 24)
              )
            
            // HEADLINE
            Text(news.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
              .foregroundColor(.accentColor)
              .padding(.horizontal)
            
            // GALLERY
            Group {
              HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Extra's")
              
              InsetGalleryView(news: news)
            }
            .padding(.horizontal)
            
            // FACTS
            Group {
              HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
              
              InsetFactView(news: news)
            }
            .padding(.horizontal)
            
            // DESCRIPTION
            Group {
              HeadingView(headingImage: "info.circle", headingText: "Full Story on  \(news.name)")
              
              Text(news.description)
                .multilineTextAlignment(.leading)
                .layoutPriority(1)
            }
            .padding(.horizontal)
            
           
            
            // LINK
            Group {
              HeadingView(headingImage: "circle.grid.cross", headingText: "Read More")
              
              ExternalWeblinkView(news: news)
            }
            .padding(.horizontal)
          } //: VSTACK
          .navigationBarTitle("\(news.name)", displayMode: .inline)
        } //: SCROLL

    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static let news: [Updates] = Bundle.main.decode("updates.json")
    
    static var previews: some View {
      NavigationView {
        NewsDetailView(news: news[0])
      }
      .previewDevice("iPhone 12 Pro")
    }
}
