import Foundation

class WebService {

    func makeRequest(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, respose, error in
            
            if let error = error {
                completion(nil)
                fatalError(error.localizedDescription)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }.resume()
    }
}


