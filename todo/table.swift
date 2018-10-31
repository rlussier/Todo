import UIKit

class TableViewController: UITableViewController {
    var todos: [Todo] = []
    
    override func viewDidLoad() {
        title = "List View"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goToForm))
    }
    
    @objc func goToForm() {
        let form = ViewController()
        show(form, sender: self)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell.textLabel?.text = todos[indexPath.row].title
            return cell
    }
}
