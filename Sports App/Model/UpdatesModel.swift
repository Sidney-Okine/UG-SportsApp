//
//  UpdatesModel.swift
//  Sports App
//
//  Created by Sidney Okine on 30/08/2022.
//

import Foundation
import SwiftUI

struct Updates: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
