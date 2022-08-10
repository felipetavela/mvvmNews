
import Foundation
import UIKit

struct ArticleListViewModel {
   let articles: [Article]
}

extension ArticleListViewModel {
    
    var numberofSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex (_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    
    let article: Article

}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String {
       
        if self.article.title != nil {
        return self.article.title!
        } else {return ""}
    }
    
    var description: String {
       
        if self.article.description != nil {
        return self.article.description!
        } else {return ""}
    }

   var publishedAt: String {
       if self.article.publishedAt != nil {
       return self.article.publishedAt!
       } else {return ""}
    }
}


