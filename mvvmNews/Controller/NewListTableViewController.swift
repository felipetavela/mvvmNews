
import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    var country: String = ""
    var category: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup ()
        
    }

    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=\(country)&category=\(category)&apiKey=0dc472add56e42e4bf2b0a7a8425d03d")!
        
        WebService().makeRequest(url: url) { articles in
            
            if let articles = articles {
        
                self.articleListVM = ArticleListViewModel(articles: articles)
            
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
      
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberofSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {fatalError("ArticleTableViewCell not found")}
            
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        
       cell.titleLabel.text = articleVM.title
       cell.descriptonLabel.text = articleVM.description
       cell.dateLabel.text = articleVM.publishedAt
        
        return cell
    }
}


        




