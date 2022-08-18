//
//  ViewController.swift
//  Atrtistep
//
//  Created by Artistep on 2022/07/20.
//

import UIKit

class Page1MainController: UIViewController {

    //MARK: IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    
    
    //MARK: func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Button Action
    
    
    //MARK: etc function
    
    


}

//MARK: Extension TableView

extension Page1MainController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: TableView Method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}
