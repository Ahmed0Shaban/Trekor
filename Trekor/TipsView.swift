//
//  TipsView.swift
//  Trekor
//
//  Created by Ahmed Shaban on 13/05/2022.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
        init() {
            let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
            let data = try! Data(contentsOf: url)
            tips = try! JSONDecoder().decode([Tip].self, from: data)
        }
    
    // I think we may could use id: \.id in Location strcut or use Identifiable here without id: \.text
    var body: some View {
        List(tips, id: \.text, children: \.children) {
            tip in
                if (tip.children) != nil {
                    Label(tip.text, systemImage: "quote.bubble")
                        .font(.headline )
                } else {
                    Text(tip.text)
                }
        }
        .navigationTitle("Tips ")
    }
}


struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
