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
    
    private let bulletinBoardItems: [String] = ["유저가 작성한 제목이 보입니다.", "유저가 작성한 제목이 보입니다.",
                                                "유저가 작성한 제목이 보입니다.", "유저가 작성한 제목이 보입니다."]
    
    private let postFeedItems: [String] = ["유저가 작성한 제목이 보입니다.", "유저가 작성한 제목이 보입니다.",
                                           "유저가 작성한 제목이 보입니다.", "유저가 작성한 제목이 보입니다."]
    
    private let detailFeedItems: [String] = ["유저가 작성한 제목이 보입니다.", "유저가 작성한 제목이 보입니다.",
                                             "유저가 작성한 제목이 보입니다.", "유저가 작성한 제목이 보입니다."]
    
    private let noticeItems: [String] = ["공지의 제목이 노출 됩니다.", "공지의 제목이 노출 됩니다.",
                                         "공지의 제목이 노출 됩니다.", "공지의 제목이 노출 됩니다."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.tableView.backgroundColor = UIColor.clear
        
        registerXib()
    }
    
    //MARK: Functions
    
    private func registerXib(){
        let nib = UINib(nibName: "Page3MainTableViewBoardCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "boardCell")
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
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell,
                   forRowAt indexPath: IndexPath) {
            cell.backgroundColor = .clear
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
                   indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "boardCell",
                                                 for: indexPath) as! Page3MainTableViewBoardCell
        switch indexPath.section {
            
        case 0:
            cell.title?.text = bulletinBoardItems[indexPath.row]
            
        case 1:
            cell.title?.text = postFeedItems[indexPath.row]
            
        case 2:
            cell.title?.text = detailFeedItems[indexPath.row]
            
        case 3:
            cell.title?.text = noticeItems[indexPath.row]
            
        default:
            return UITableViewCell()
        }
        
        return cell
    }
    
    
}
