//
//  DataLoader.swift
//  mintRailsProject
//
//  Created by Ikechukwu Onuorah on 19/11/2020.
//

import Foundation

protocol DataLoaderProtocol {
    func getData(success: @escaping ([AllCommitsDataModel]) -> (), failure: @escaping (String) -> ())
}

class DataLoader: DataLoaderProtocol {
    public func getData(success: @escaping ([AllCommitsDataModel]) -> (), failure: @escaping (String) -> ()) {
        let url = DataLoaderConstants.url
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response,error in
            guard let data = data, error == nil else {
                return
            }
            var result: [AllCommitsDataModel]?
            do{
                result = try JSONDecoder().decode([AllCommitsDataModel].self, from: data)
            }
            catch {
                print("failed to convert \(error)")
                failure(error.localizedDescription)
            }
            guard let json = result else {
                return
            }
            print(json)
            success(json)
        })
        
        task.resume()
    }
}
