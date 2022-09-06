//
//  ViewController.swift
//  Artistep
//
//  Created by Artistep on 2022/09/06.
//

import UIKit


class Page3MainController: UIViewController {

    //MARK: IBOutlet Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    
    private let sections: [String] = ["자유게시판", "정보게시판", "피드백게시판", "공지사항"]
    
    private let bulletinBoardItems: [String] = ["유저가 작성한 제목이 보입니다."]
    private let postFeedItems: [String] = ["유저가 작성한 제목이 보입니다."]
    private let detailFeedItems: [String] = ["유저가 작성한 제목이 보입니다."]
    private let noticeItems: [String] = ["공지의 제목이 노출 됩니다."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension Page3MainController: UITableViewDelegate, UITableViewDataSource{
    
    //MARK: TableView Method
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
            
        case 0:
            return bulletinBoardItems.count
            
        case 1:
            return postFeedItems.count
            
        case 2:
            return detailFeedItems.count
            
        case 3:
            return noticeItems.count
            
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.section {
            
        case 0:
            cell.textLabel?.text = bulletinBoardItems[indexPath.row]
            
        case 1:
            cell.textLabel?.text = postFeedItems[indexPath.row]
            
        case 2:
            cell.textLabel?.text = detailFeedItems[indexPath.row]
            
        case 3:
            cell.textLabel?.text = noticeItems[indexPath.row]
            
        default:
            return UITableViewCell()
        }
        
        return cell
    }
    
    
}
