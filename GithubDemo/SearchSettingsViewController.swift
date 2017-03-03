//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Rajit Dang on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit




class SearchSettingsViewController: UIViewController {
    var searchSettings = GithubRepoSearchSettings()
    
    
    @IBOutlet weak var starsSlider: UISlider!
    @IBOutlet weak var starSettingLabel: UILabel!
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func save(_ sender: Any) {
        self.delegate?.didSaveSettings(settings: searchSettings)
    }
    
    @IBAction func cancalButtonPressed(_ sender: Any) {
        self.delegate?.didCancelSettings()
    }
    
    @IBAction func starChanged(_ sender: UISlider) {
        starSettingLabel.text = "\(sender.value)"
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let navController = segue.destination as! UINavigationController
        let vc = navController.topViewController as! RepoResultsViewController
    }
 
}
