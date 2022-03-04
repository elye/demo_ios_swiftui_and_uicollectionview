import UIKit

private let reuseIdentifier = "Cell2"

class CollectionViewController: UICollectionViewController {

    let datasource: [MyDataSource] = [
        MyDataSource(type: 1, data: "USA"),
        MyDataSource(type: 2, data: "Brazil"),
        MyDataSource(type: 1, data: "China"),
        MyDataSource(type: 2, data: "Australia"),
        MyDataSource(type: 1, data: "Japan"),
        MyDataSource(type: 2, data: "Russia"),
        MyDataSource(type: 1, data: "United Kingdom"),
        MyDataSource(type: 3, data: "New Zealand", count: 3),
        MyDataSource(type: 3, data: "India"),
        MyDataSource(type: 3, data: "Vietname"),
        MyDataSource(type: 1, data: "South Africa"),
        MyDataSource(type: 2, data: "Malaysia"),
        MyDataSource(type: 1, data: "Indonesia"),
        MyDataSource(type: 2, data: "South Korea"),
        MyDataSource(type: 2, data: "Egypt"),
        MyDataSource(type: 1, data: "Mongolia"),
        MyDataSource(type: 1, data: "Ukraine"),
        MyDataSource(type: 1, data: "Israel"),
        MyDataSource(type: 3, data: "Taiwan"),
        MyDataSource(type: 3, data: "Germany"),
        MyDataSource(type: 3, data: "Austria"),
        MyDataSource(type: 3, data: "Albania"),
        MyDataSource(type: 3, data: "Algeria", count: 3),
        MyDataSource(type: 3, data: "Andorra", count: 5),
        MyDataSource(type: 3, data: "Angola", count: 5),
        MyDataSource(type: 3, data: "Antigua"),
        MyDataSource(type: 3, data: "Argentina"),
        MyDataSource(type: 3, data: "Armenia"),
        MyDataSource(type: 3, data: "Australia", count: 1),
        MyDataSource(type: 3, data: "Austria"),
        MyDataSource(type: 3, data: "Azerbaijan"),
        MyDataSource(type: 3, data: "Bahamas"),
        MyDataSource(type: 3, data: "Bahrain"),
        MyDataSource(type: 3, data: "Bangladesh", count: 6),
        MyDataSource(type: 3, data: "Barbados"),
        MyDataSource(type: 3, data: "Belarus"),
        MyDataSource(type: 3, data: "Belgium"),
        MyDataSource(type: 3, data: "Belize"),
        MyDataSource(type: 3, data: "Benin"),
        MyDataSource(type: 3, data: "Bhutan"),
        MyDataSource(type: 3, data: "Bolivia"),
        MyDataSource(type: 3, data: "Bosnia"),
        MyDataSource(type: 3, data: "Botswana", count: 4),
        MyDataSource(type: 3, data: "Brazil"),
        MyDataSource(type: 3, data: "Brunei"),
        MyDataSource(type: 3, data: "Bulgaria"),
        MyDataSource(type: 3, data: "Burkina"),
        MyDataSource(type: 3, data: "Burundi"),
        MyDataSource(type: 3, data: "Cabo"),
        MyDataSource(type: 3, data: "Cambodia"),
        MyDataSource(type: 3, data: "Cameroon"),
        MyDataSource(type: 3, data: "Canada"),
        MyDataSource(type: 3, data: "Chad"),
        MyDataSource(type: 3, data: "Chile"),
        MyDataSource(type: 3, data: "China"),
        MyDataSource(type: 3, data: "Colombia"),
        MyDataSource(type: 3, data: "Comoros"),
        MyDataSource(type: 3, data: "Congo"),
        MyDataSource(type: 3, data: "Cook"),
        MyDataSource(type: 3, data: "Costa"),
        MyDataSource(type: 3, data: "Croatia"),
        MyDataSource(type: 3, data: "Cuba"),
        MyDataSource(type: 3, data: "Cyprus"),
        MyDataSource(type: 3, data: "Czechia"),
        MyDataSource(type: 3, data: "Côte"),
        MyDataSource(type: 3, data: "Denmark"),
        MyDataSource(type: 3, data: "Djibouti"),
        MyDataSource(type: 3, data: "Dominica"),
        MyDataSource(type: 3, data: "Dominican"),
        MyDataSource(type: 3, data: "Ecuador"),
        MyDataSource(type: 3, data: "Egypt"),
        MyDataSource(type: 3, data: "El Salvado"),
        MyDataSource(type: 3, data: "Eritrea"),
        MyDataSource(type: 3, data: "Estonia"),
        MyDataSource(type: 3, data: "Eswatini"),
        MyDataSource(type: 3, data: "Ethiopia"),
        MyDataSource(type: 3, data: "Faroe"),
        MyDataSource(type: 3, data: "Fiji"),
        MyDataSource(type: 3, data: "Finland"),
        MyDataSource(type: 3, data: "France"),
        MyDataSource(type: 3, data: "Gabon"),
        MyDataSource(type: 3, data: "Gambia"),
        MyDataSource(type: 3, data: "Georgia"),
        MyDataSource(type: 3, data: "Germany"),
        MyDataSource(type: 3, data: "Ghana"),
        MyDataSource(type: 3, data: "Greece"),
        MyDataSource(type: 3, data: "Grenada"),
        MyDataSource(type: 3, data: "Guatemala"),
        MyDataSource(type: 1, data: "USA"),
        MyDataSource(type: 2, data: "Brazil"),
        MyDataSource(type: 3, data: "China"),
        MyDataSource(type: 2, data: "Australia"),
        MyDataSource(type: 1, data: "Japan"),
        MyDataSource(type: 2, data: "Russia"),
        MyDataSource(type: 1, data: "United Kingdom"),
        MyDataSource(type: 3, data: "New Zealand"),
        MyDataSource(type: 3, data: "India"),
        MyDataSource(type: 3, data: "Vietname"),
        MyDataSource(type: 1, data: "South Africa"),
        MyDataSource(type: 2, data: "Malaysia"),
        MyDataSource(type: 1, data: "Indonesia"),
        MyDataSource(type: 2, data: "South Korea"),
        MyDataSource(type: 2, data: "Egypt"),
        MyDataSource(type: 1, data: "Mongolia"),
        MyDataSource(type: 1, data: "Ukraine"),
        MyDataSource(type: 1, data: "Israel"),
        MyDataSource(type: 3, data: "Taiwan"),
        MyDataSource(type: 3, data: "Germany"),
        MyDataSource(type: 3, data: "Austria"),
        MyDataSource(type: 3, data: "Albania"),
        MyDataSource(type: 3, data: "Algeria"),
        MyDataSource(type: 3, data: "Andorra"),
        MyDataSource(type: 3, data: "Angola"),
        MyDataSource(type: 3, data: "Antigua"),
        MyDataSource(type: 3, data: "Argentina"),
        MyDataSource(type: 3, data: "Armenia"),
        MyDataSource(type: 3, data: "Australia"),
        MyDataSource(type: 3, data: "Austria"),
        MyDataSource(type: 3, data: "Azerbaijan"),
        MyDataSource(type: 3, data: "Bahamas"),
        MyDataSource(type: 3, data: "Bahrain"),
        MyDataSource(type: 3, data: "Bangladesh"),
        MyDataSource(type: 3, data: "Barbados"),
        MyDataSource(type: 3, data: "Belarus"),
        MyDataSource(type: 3, data: "Belgium"),
        MyDataSource(type: 3, data: "Belize"),
        MyDataSource(type: 3, data: "Benin"),
        MyDataSource(type: 3, data: "Bhutan"),
        MyDataSource(type: 3, data: "Bolivia"),
        MyDataSource(type: 3, data: "Bosnia"),
        MyDataSource(type: 3, data: "Botswana"),
        MyDataSource(type: 3, data: "Brazil"),
        MyDataSource(type: 3, data: "Brunei"),
        MyDataSource(type: 3, data: "Bulgaria"),
        MyDataSource(type: 3, data: "Burkina"),
        MyDataSource(type: 3, data: "Burundi"),
        MyDataSource(type: 3, data: "Cabo"),
        MyDataSource(type: 3, data: "Cambodia"),
        MyDataSource(type: 3, data: "Cameroon"),
        MyDataSource(type: 3, data: "Canada"),
        MyDataSource(type: 3, data: "Chad"),
        MyDataSource(type: 3, data: "Chile"),
        MyDataSource(type: 3, data: "China"),
        MyDataSource(type: 3, data: "Colombia"),
        MyDataSource(type: 3, data: "Comoros"),
        MyDataSource(type: 3, data: "Congo"),
        MyDataSource(type: 3, data: "Cook"),
        MyDataSource(type: 3, data: "Costa"),
        MyDataSource(type: 3, data: "Croatia"),
        MyDataSource(type: 3, data: "Cuba"),
        MyDataSource(type: 3, data: "Cyprus"),
        MyDataSource(type: 3, data: "Czechia"),
        MyDataSource(type: 3, data: "Côte"),
        MyDataSource(type: 3, data: "Denmark"),
        MyDataSource(type: 3, data: "Djibouti"),
        MyDataSource(type: 3, data: "Dominica"),
        MyDataSource(type: 3, data: "Dominican"),
        MyDataSource(type: 3, data: "Ecuador"),
        MyDataSource(type: 3, data: "Egypt"),
        MyDataSource(type: 3, data: "El Salvado"),
        MyDataSource(type: 3, data: "Eritrea", count: 4),
        MyDataSource(type: 3, data: "Estonia", count: 5),
        MyDataSource(type: 3, data: "Eswatini"),
        MyDataSource(type: 3, data: "Ethiopia"),
        MyDataSource(type: 3, data: "Faroe", count: 8),
        MyDataSource(type: 3, data: "Fiji"),
        MyDataSource(type: 3, data: "Finland"),
        MyDataSource(type: 3, data: "France"),
        MyDataSource(type: 3, data: "Gabon", count: 5),
        MyDataSource(type: 3, data: "Gambia", count: 4),
        MyDataSource(type: 3, data: "Georgia", count: 1),
        MyDataSource(type: 3, data: "Germany", count: 3),
        MyDataSource(type: 3, data: "Ghana"),
        MyDataSource(type: 3, data: "Greece"),
        MyDataSource(type: 3, data: "Grenada"),
        MyDataSource(type: 3, data: "Guatemala")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let distinctCount = Array(Set(datasource.map { $0.count }.sorted()))
        
        for item in distinctCount {
            collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "\(MyCollectionViewCell.reuseIdentifier):\(item)")
        }

        let layout = collectionView.collectionViewLayout
        if let flowLayout = layout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(
                width: collectionView.widestCellWidth,
                // Make the height a reasonable estimate to
                // ensure the scroll bar remains smooth
                height: 200
            )
        }
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datasource.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: UICollectionViewCell = CollectionViewCellTwo()
        
        switch datasource[indexPath.row].type {
            case 1: do {
                if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
                    countryCell.configure(with: datasource[indexPath.row].data)
                    
                    cell = countryCell
                }
            }
            case 2: do {
                if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as? CollectionViewCellTwo {
                    countryCell.configure(with: datasource[indexPath.row].data)
                    
                    cell = countryCell
                }
            }
            default: do {
                guard let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MyCollectionViewCell.reuseIdentifier):\(datasource[indexPath.row].count)", for: indexPath) as? MyCollectionViewCell else {
                    fatalError("Could not dequeue cell")
                }
                
                myCell.configure(with: datasource[indexPath.row], parent: self)
                
                cell = myCell
            }
        }
                
        return cell
    }
}
