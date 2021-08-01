//
//  tabBarViewController.swift
//  BIB Individuals
//
//  Created by Apple on 7/30/21.
// 

import UIKit

class tabBarViewController: BaseViewController {
    
    @IBOutlet weak var homeStack: TappedStack!
    @IBOutlet weak var serviceStack: TappedStack!
    @IBOutlet weak var netWorkStack: TappedStack!
    @IBOutlet weak var sideMEnu: TappedStack!
    @IBOutlet weak var notifications: TappedStack!
    @IBOutlet weak var containerView: UIView!
    var stacks: [TappedStack]?
    var ViewControllers: [UIViewController]!
    var selectedIndex: Int = 2
    var presenter: tabBarPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createViewController()
        setDelegate()
        configureView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
    }
    private func configureView()
    {
        stacks = [homeStack,netWorkStack,serviceStack,notifications,sideMEnu]
        stackDidTap(stacks![selectedIndex])
    }
    private func setDelegate()
    {
        homeStack.tapDelegate = self
        serviceStack.tapDelegate = self
        netWorkStack.tapDelegate = self
        sideMEnu.tapDelegate = self
        notifications.tapDelegate = self
    }
    private func createViewController()
    {
        let homeViewController = HomePageRouter.CreateHomePageViewController()
        let NetworkViewController = NetworkRouter.CreateNetworkViewController()
        let servicesViewController = ServicesRouter.CreateServicesViewController()
        let notificationsViewController = NotificationsRouter.CreateNotificationsViewController()
        let sideMenuViewController = SideMenuRouter.CreateSideMenuViewController()
        ViewControllers = [homeViewController,NetworkViewController,servicesViewController,notificationsViewController,sideMenuViewController]
    }
}
