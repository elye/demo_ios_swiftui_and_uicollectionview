import UIKit

class CollectionViewCellTwo: BaseUICollectionViewCell {
    
    @IBOutlet private weak var myLabel: UILabel!
    
    func configure(with label: String) {
        myLabel.text = label
    }
}
