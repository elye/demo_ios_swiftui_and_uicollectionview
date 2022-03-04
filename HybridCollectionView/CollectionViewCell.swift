import UIKit

class CollectionViewCell: BaseUICollectionViewCell {
    
    @IBOutlet private weak var country: UILabel!
    
    func configure(with countryName: String) {
        country.text = countryName
    }
}
