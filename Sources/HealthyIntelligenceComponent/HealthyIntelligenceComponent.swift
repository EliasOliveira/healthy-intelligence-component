// Healthy Inteligence Component
// 23/11/2024 - Junior

import SwiftUI

public enum MenuItemType {
    case image(Image)
    case text(Text)
}

public func hello () {
    print("Hello, World!")
}

@available(macOS 14, iOS 18, *)
struct MenuItem: View {
    var mockImageUrl = "https://firebasestorage.googleapis.com/v0/b/streaminator-lives.appspot.com/o/assets%2Fchincoteague%402x.jpg?alt=media&token=b3ec1824-39b9-4358-9506-ce2551039650"
    
    var body: some View {
    
        VStack(alignment: .center) {
            HStack(alignment: .center, spacing: 10.0) {
                AsyncImage(url: URL(string: mockImageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 55, height: 55)
                .cornerRadius(5)
                Text("38 >")
            }
            HStack(alignment: .center, spacing: 10.0) {
                Text("All")
            }
            
        }
        .padding(2.0)
        .frame(width: 155.0)
        .background(Color.black)
        
    }
}

