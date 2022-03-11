import Foundation

import SwiftUI

struct MySwiftUICell: View {
    
    let content: MyDataSource
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(1...content.count, id:\.self) {_ in
                Text(content.data)
                    .font(.title)
                    .background(Color.purple)
            }
            Text("i is \(content.count)")
                .font(.title)
                .background(Color.pink)

        }.padding()
    }
}
