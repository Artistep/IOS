//
//  ViewController.swift
//  Atrtistep
//
//  Created by Artistep on 2022/07/20.
//

import UIKit

import AVFoundation

class MainController: UIViewController {

    //MARK: IBOutlet Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!

    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
    }
    
    //MARK: Button Actions
    
    //MARK: Functions
    
    private func registerXib() {
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "mainXib")
    }
    
    //MARK: Objc Functions
    
}

//MARK: Extensions

extension MainController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: TableView Method
    
    // 테이블 뷰에 보여줄 갯수. 호출 이후 추가 될 때 마다 배열에 append --> reload
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    // 테이블 뷰에 올라간 셀의 형태
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainXib",
                                                 for: indexPath) as! MainTableViewCell
        cell.userID.text = "@sozohoy"
        cell.userNickName.text = "석지한"
        cell.url = URL(string: "https://media.w3.org/2010/05/sintel/trailer.mp4")!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension // 크기 동적
    }
    
}
