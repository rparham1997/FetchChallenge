
import UIKit

final class EventCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventSearchVC = EventSearchController()
        eventSearchVC.coordinator = self
        navigationController.pushViewController(eventSearchVC, animated: true)
    }
    
    func presentEventDetail(event: Event) {
        let controller = EventDetailController()
        controller.viewModel = EventDetailViewModel(event: event)
        navigationController.pushViewController(controller, animated: true)
    }
}
