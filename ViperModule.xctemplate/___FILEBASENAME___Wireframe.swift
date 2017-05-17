//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___WireframeProtocol {
  weak var view: UIViewController?
    
  static func createModule() -> UIViewController {
    let view = ___FILEBASENAMEASIDENTIFIER___View()
    let wireframe: ___FILEBASENAMEASIDENTIFIER___WireframeProtocol = ___FILEBASENAMEASIDENTIFIER___Wireframe()
    let presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol & ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol = ___FILEBASENAMEASIDENTIFIER___Presenter()
    let interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol & ___FILEBASENAMEASIDENTIFIER___DataManagerOutputProtocol = ___FILEBASENAMEASIDENTIFIER___Interactor()
    let dataManager: ___FILEBASENAMEASIDENTIFIER___DataManagerInputProtocol = ___FILEBASENAMEASIDENTIFIER___DataManager()
        
    view.presenter = presenter
    presenter.view = view
    presenter.wireframe = wireframe
    presenter.interactor = interactor
    interactor.presenter = presenter
    interactor.dataManager = dataManager
    dataManager.requestHandler = interactor
        
    return view
  }
}