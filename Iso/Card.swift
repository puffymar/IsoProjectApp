//
//  Card.swift
//  Iso
//
//  Created by Marriatii on 5/25/24.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: Image
}

var cards = [
    Card(title: "Dallas", text: "Live Venues!", image: Image(.dallas)),
    Card(title: "Miami", text: "Hyper Venues!", image: Image(.miami)),
    Card(title: "Norfolk", text: "Place to get started!", image: Image(.nfk)),
    Card(title: "New York City", text: "High business!", image: Image(.NYC)),
    Card(title: "Las Angeles", text: "Anything Goes Venues!", image: Image(.LA)),
    Card(title: "The Norva", text: "The Height of Norfolk", image: Image(.norva)),
    Card(title: "Your Venue", text: "Get Lit!", image: Image(.image7))
    ]
