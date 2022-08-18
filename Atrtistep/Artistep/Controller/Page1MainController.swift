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
    }
    
    //MARK: Button Action
    
    
    //MARK: etc function
    
    private func registerXib(){
        let nib = UINib(nibName: "Page1MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "mainXib")
    }
    
}

//MARK: Extension TableView

extension Page1MainController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: TableView Method
    
    // 테이블 뷰에 보여줄 갯수. 호출 이후 추가 될 때 마다 배열에 append --> reload
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // 테이블 뷰에 올라간 셀의 형태
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainXib", for: indexPath)
        
        return cell
    }
    
}
