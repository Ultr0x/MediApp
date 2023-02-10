//
//  OnboardingViewController.swift
//  MediApp
//
//  Created by Jan Świdziński on 27/05/2022.
//

import UIKit
// dlegate
protocol OnboardingDelegate: AnyObject{
    func showMainTabBarController()
    
}

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupCollectionView()
        setupPageControl()
        button.layer.cornerRadius = 20
        button2.layer.cornerRadius = 20
    }
    private func setupCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.backgroundColor = .systemGroupedBackground
        collectionView.collectionViewLayout = layout
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
    }
    private func setupPageControl(){
        pageControl.numberOfPages = Slide.collection.count
    }
    private func setupViews(){
        view.backgroundColor = .systemGroupedBackground
    }
    
    @IBAction func getStartedButtonTapped(_ sender: UIButton){
        performSegue(withIdentifier: "showLogin", sender: nil)
    }
    @IBAction func signUpButtonTapped(_ sender: UIButton){
        performSegue(withIdentifier: "showSignUp", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLogin" {
            if let destination = segue.destination as? LoginViewController{
                destination.delegate = self
            }
        }
        if segue.identifier == "showSignUp" {
            if let destination = segue.destination as? SignUpViewController{
                destination.delegate = self
            }
        }
    }
   
    private func showCaption(atIndex index: Int){
        let slide = Slide.collection[index]
        titleLabel.text = slide.title
        descriptionLabel.text = slide.description
    }
}
extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Slide.collection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! OnboardingCollectionViewCell
        let imageName = Slide.collection[indexPath.item].imageName
        let image = UIImage(named: imageName) ?? UIImage()
        cell.configure(image: image)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        showCaption(atIndex: index)
        self.pageControl.currentPage = index
    }
    
}

extension OnboardingViewController: OnboardingDelegate{
    func showMainTabBarController(){
        
        if let loginViewController = self.presentedViewController as? LoginViewController {
            loginViewController.dismiss(animated:true){
                PresenterManager.shared.show(vc: .mainTabBarController)
                 
            }
        }
        
        
    }
}

