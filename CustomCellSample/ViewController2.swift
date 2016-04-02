import UIKit

class ViewController2: UIViewController {
    
    /// 画像のファイル名
    let imageNames = ["リンゴ", "バナナ", "ぶどう", "みかん"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController2: UITableViewDelegate, UITableViewDataSource {

    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // セルを取得
        // var cell = UITableViewCell()
        
        var cell = tableView.dequeueReusableCellWithIdentifier("MyCell")!
        
        switch indexPath.row {
        case 0:
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "MyCell")
            cell.detailTextLabel?.text = "リンゴです"
            cell.accessoryType = .None
        case 1:
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyCell")
            cell.detailTextLabel?.text = "バナナです"
            cell.accessoryType = .Checkmark
        case 2:
            cell = UITableViewCell(style: .Default, reuseIdentifier: "MyCell")
            cell.accessoryType = .DetailButton
        default:
            cell = UITableViewCell(style: .Default, reuseIdentifier: "MyCell")
            cell.accessoryType = .DisclosureIndicator
        }
        
        cell.textLabel?.text = imageNames[indexPath.row]
        
        return cell
    }

}

