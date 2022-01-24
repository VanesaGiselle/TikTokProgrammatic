//
//  ViewController.swift
//  TikTokLayout
//
//  Created by Vanesa Korbenfeld on 21/01/2022.
//
import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeViewController = HomeViewController()
        let trendViewController = TrendViewController()
        let moreViewController = MoreViewController()
        let messageViewController = MessageViewController()
        let userViewController = UserViewController()
        
        homeViewController.tabBarItem = UITabBarItem.init(title: "Inicio", image: UIImage(named: "homeicon"), tag: 1)
        trendViewController.tabBarItem = UITabBarItem.init(title: "Tendencias", image: UIImage(named: "trendicon"), tag: 2)
        moreViewController.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "moreicon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), tag: 3)
        messageViewController.tabBarItem = UITabBarItem.init(title: "Bandeja de entrada", image: UIImage(named: "messageicon"), tag: 4)
        userViewController.tabBarItem = UITabBarItem.init(title: "Perfil", image: UIImage(named: "usericon"), tag: 5)
        
        self.setViewControllers([homeViewController, trendViewController, moreViewController, messageViewController, userViewController], animated: false)
        
        self.tabBar.tintColor = .white
        self.tabBar.barStyle = .black
        self.tabBar.isTranslucent = false
    }
}


class HomeViewController: UIViewController {
//    lazy var liveButton = createLiveButton()
    
//    lazy var customNavigationBar = createCustomNavigationBar()
//    lazy var followingButton = createFollowingButton()
//    lazy var dividerLine = createDividerLine()
//    lazy var forYouButton = createForYouButton()
    
//    lazy var searchButton = createSearchButton()
    
    lazy var currentPlayingStackView = createCurrentPlayingStackView()
    lazy var currentUserButton = createCurrentUserButton()
    lazy var currentDescriptionLabel = createCurrentDescriptionLabel()
    lazy var currentHashtagLabel = createCurrentHashtagLabel()
    lazy var currentTranslatorButton = createCurrentTranslatorButton()
    lazy var currentSoundStackView = createCurrentSoundStackView()
    lazy var currentSoundButton = createCurrentSoundButton()
    lazy var currentSoundLabel = createCurrentSoundLabel()
    
    lazy var socialMediaStackView = createSocialMediaStackView()
    lazy var socialMediaAddButton = createSocialMediaAddButton()
    lazy var socialMediaLikeButton = createSocialMediaLikeButton()
    lazy var socialMediaMessageButton = createSocialMediaMessageButton()
    lazy var socialMediaFollowerButton = createSocialMediaFollowerButton()
    lazy var socialMediaUserButton = createSocialMediaUserButton()
    
//    func createLiveButton() -> UIButton {
//        let button = UIButton()
//
//        button.setImage(UIImage(named: "liveicon"), for: .normal)
//        return button
//    }
    
//    func createCustomNavigationBar() -> UIStackView {
//        let stackView = UIStackView()
//
//        stackView.addArrangedSubview(followingButton)
//        stackView.addArrangedSubview(dividerLine)
//        stackView.addArrangedSubview(forYouButton)
//        stackView.axis = .horizontal
//        return stackView
//    }
    
//    func createFollowingButton() -> UIButton {
//        let button = UIButton()
//
//        button.setTitle("Siguiendo", for: .normal)
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
//        button.titleLabel?.textColor = .white
//        return button
//    }
//
//    func createDividerLine() -> UILabel {
//        let label = UILabel()
//
//        label.text = " | "
//        label.textColor = .white
//        return label
//    }
//
//    func createForYouButton() -> UIButton {
//        let button = UIButton()
//
//        button.setTitle("Para ti", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        button.titleLabel?.textColor = .white
//        return button
//    }
//
//    func createSearchButton() -> UIButton {
//        let button = UIButton()
//
//        button.setImage(UIImage(named: "searchicon"), for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        return button
//    }

    func createCurrentPlayingStackView() -> UIStackView {
        let stackView = UIStackView()
        
        stackView.addArrangedSubview(currentUserButton)
        stackView.addArrangedSubview(currentDescriptionLabel)
        stackView.addArrangedSubview(currentHashtagLabel)
        stackView.addArrangedSubview(currentTranslatorButton)
        stackView.addArrangedSubview(currentSoundStackView)
        stackView.axis = .vertical
        stackView.alignment = .leading
        return stackView
    }
    
    func createCurrentUserButton() -> UIButton {
        let button = UIButton()
        
        button.setTitle("qin_li", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.titleLabel?.textColor = .white
        return button
    }
    
    func createCurrentDescriptionLabel() -> UILabel {
        let label = UILabel()
        
        label.text = "Meet Moxie - The companion robot for children!"
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }
    
    func createCurrentHashtagLabel() -> UILabel {
        let label = UILabel()
        
        label.text = "#robot #moxie #design #fuseproject"
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }
    
    func createCurrentTranslatorButton() -> UIButton {
        let button = UIButton()
        
        button.setTitle("Ver Traduccion", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        button.titleLabel?.textColor = .white
        return button
    }

    func createCurrentSoundStackView() -> UIStackView {
        let stackview = UIStackView()
        
        stackview.addArrangedSubview(currentSoundButton)
        stackview.addArrangedSubview(currentSoundLabel)
        stackview.axis = .horizontal
        stackview.alignment = .leading
        stackview.spacing = 10
        return stackview
    }
    
    func createCurrentSoundButton() -> UIButton {
        let button = UIButton()
        
        button.setImage(UIImage(named: "musicicon"), for: .normal)
        return button
    }
    
    func createCurrentSoundLabel() -> UILabel {
        let label = UILabel()
        
        label.text = "sonido original - qin_li"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }
    
    func createSocialMediaStackView() -> UIStackView {
        let stackview = UIStackView()

        stackview.addArrangedSubview(socialMediaAddButton)
        stackview.addArrangedSubview(socialMediaLikeButton)
        stackview.addArrangedSubview(socialMediaMessageButton)
        stackview.addArrangedSubview(socialMediaFollowerButton)
        stackview.addArrangedSubview(socialMediaUserButton)
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.spacing = 30
        return stackview
    }
    
    func createSocialMediaAddButton() -> ImageWithTitleButton {
        let imageWithTitleButton = ImageWithTitleButton()
        
        imageWithTitleButton.imageButton.image = UIImage(named: "userfollow")
        return imageWithTitleButton
    }
    
    func createSocialMediaLikeButton() -> ImageWithTitleButton {
        let imageWithTitleButton = ImageWithTitleButton()
        
        imageWithTitleButton.imageButton.image = UIImage(named: "likeicon")
        imageWithTitleButton.textButton.text = "31,0M"
        return imageWithTitleButton
    }

    func createSocialMediaMessageButton() -> ImageWithTitleButton {
        let imageWithTitleButton = ImageWithTitleButton()
        
        imageWithTitleButton.imageButton.image = UIImage(named: "messagesicon")
        imageWithTitleButton.textButton.text = "34,1K"
        return imageWithTitleButton
    }
    
    func createSocialMediaFollowerButton() -> ImageWithTitleButton {
        let imageWithTitleButton = ImageWithTitleButton()
        
        imageWithTitleButton.imageButton.image = UIImage(named: "followicon")
        imageWithTitleButton.textButton.text = "1,4K"
        return imageWithTitleButton
    }
    
    func createSocialMediaUserButton() -> UIButton {
        let button = UIButton()
        
        button.setImage(UIImage(named: "user"), for: .normal)
        return button
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        assignBackground()
        
//        view.addSubview(liveButton)
//        view.addSubview(customNavigationBar)
//        view.addSubview(searchButton)
        view.addSubview(currentPlayingStackView)
        view.addSubview(socialMediaStackView)

//        liveButton.translatesAutoresizingMaskIntoConstraints = false
//        customNavigationBar.translatesAutoresizingMaskIntoConstraints = false
//        searchButton.translatesAutoresizingMaskIntoConstraints = false
        currentPlayingStackView.translatesAutoresizingMaskIntoConstraints = false
        socialMediaStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
//            liveButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
//            liveButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            liveButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.05),
//            liveButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05),
//            
//            customNavigationBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            customNavigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
//            
//            searchButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
//            searchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            searchButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.05),
//            searchButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05),
            
            currentPlayingStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            currentPlayingStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            currentPlayingStackView.trailingAnchor.constraint(equalTo: socialMediaStackView.leadingAnchor, constant: -10),
            
            socialMediaStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            socialMediaStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        socialMediaUserButton.layer.cornerRadius = socialMediaUserButton.frame.size.width/2
        socialMediaUserButton.layer.masksToBounds = false
        socialMediaUserButton.clipsToBounds = true
        socialMediaUserButton.layer.borderWidth = 5
        socialMediaUserButton.layer.borderColor = CGColor.init(red: 128/255, green: 127/255, blue: 127/255, alpha: 1)
        
        socialMediaAddButton.imageButton.layer.cornerRadius = socialMediaAddButton.imageButton.frame.size.width/2
        socialMediaAddButton.imageButton.layer.masksToBounds = false
        socialMediaAddButton.imageButton.clipsToBounds = true
        socialMediaAddButton.imageButton.layer.borderWidth = 2
        socialMediaAddButton.imageButton.layer.borderColor = CGColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    func assignBackground() {
        let background = UIImage(named: "background")
        var imageView: UIImageView!
        
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
}

class TrendViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

class MoreViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
}

class MessageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
}

class UserViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
}

class ImageWithTitleButton: UIStackView {
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupStackView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupStackView()
    }
    
    var imageButton = UIImageView()
    var textButton = UILabel()
    
    func setupStackView() {
        textButton.textAlignment = .center
        textButton.textColor = .white
        textButton.font = UIFont.boldSystemFont(ofSize: 12)
        
        self.addArrangedSubview(imageButton)
        self.addArrangedSubview(textButton)
        self.spacing = 5
        self.axis = .vertical
        self.alignment = .center
    }
}
