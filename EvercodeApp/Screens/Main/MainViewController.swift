import UIKit

final class MainViewController: UIViewController {

    private lazy var mainView: MainView = {

        let mainView = MainView()
        return mainView
    }()

    override func viewDidLoad() {

        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Evercode App"
    }

    override func loadView() {
        self.view = mainView
    }
}
