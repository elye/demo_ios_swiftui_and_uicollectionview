import SwiftUI
import UIKit

class HostingCell<Content: View>: BaseUICollectionViewCell {

    private let hostingController = UIHostingController<Content?>(rootView: nil)

    private func removeHostingControllerFromParent() {
            hostingController.willMove(toParent: nil)
            hostingController.view.removeFromSuperview()
            hostingController.removeFromParent()
        }
    
    func configure(with view: Content, in parent: UIViewController?) {
        guard let parent = parent else {
            let message = "parent viewController is required"
            assertionFailure(message)
            return
        }
        
        hostingController.rootView = view
        hostingController.view.invalidateIntrinsicContentSize()

        let requiresControllerMove = hostingController.parent != parent
        if requiresControllerMove {
            print("Tracking: Attaching of UIHostingController to UICollectionView")
            removeHostingControllerFromParent()
            parent.addChild(hostingController)
        }

        if !contentView.subviews.contains(hostingController.view) {
            print("Tracking: Setup of UIHostingController")
            setUpUI()
        }

        if requiresControllerMove {
            print("Tracking: Moving of UIHostingController")
            hostingController.didMove(toParent: parent)
        }
    }
    

    private func setUpUI() {
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(hostingController.view)
        hostingController.view.backgroundColor = .gray

        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(
                equalTo: contentView.topAnchor
            ),
            hostingController.view.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor
            ),
            hostingController.view.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor
            ),
            hostingController.view.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor
            ),
        ])
    }
}
