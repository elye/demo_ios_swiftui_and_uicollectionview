import UIKit
import SwiftUI

class MySwiftUICollectionViewCell: HostingCell<MySwiftUICell> {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // initialize what is needed
        print("Tracking: Creation of SwiftUIViewCell with UIHostingController")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.isUserInteractionEnabled = true
        // initialize what is needed
    }
    
    static var reuseIdentifier = "MyCollectionViewCell"

    typealias Content = MyDataSource
    
    func configure(with content: MyDataSource, parent: UIViewController) {
        configure(with: MySwiftUICell(content: content), in: parent)
        
        print("Tracking: Configure of SwiftUIViewCell")
    }
}
