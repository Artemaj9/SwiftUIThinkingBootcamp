//
//  AsyncImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://img.freepik.com/free-vector/flat-link-building-background_23-2148016969.jpg?w=1380&t=st=1687296561~exp=1687297161~hmac=7ac97f47865fb007283e0e5d2cd529e295fe5b7d17385f3466dd5541abb6fbc8")
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProfileView()
            case .success(let image):
               image
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFill()
                .cornerRadius(25)
            case . failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:  Image(systemName: "questionmark")
                    .font(.headline)
            }
            
        }
      
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .frame(width: 300, height: 300)
//                .scaledToFill()
//                .cornerRadius(25)
//
//        }, placeholder: {
//            ProgressView()
//        })
            

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
