

import UIKit


class AllProductsViewController: UIViewController {
    
    @IBOutlet weak var mcolletion: UICollectionView!
    
    var AllProducts: [AllProducts]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mcolletion.dataSource = self
        self.mcolletion.delegate = self
        
       // self.AllProducts = DataProvider().GetAllProducts()
        let nib = UINib(nibName: CollectionViewCell.id, bundle: nil)
        self.mcolletion.register(nib, forCellWithReuseIdentifier: CollectionViewCell.id)
        
        AllProducts = DataProvider().GetAllProducts()
        // Do any additional setup after loading the view.
    }

}

extension AllProductsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // print("HHH   \(AllProducts.count)")
        return AllProducts.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 192, height: 248)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.mcolletion.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.id, for: indexPath)as! CollectionViewCell
        
        let now = AllProducts[indexPath.row]
        
     //   print("A    \(now.name!)")
        
        cell.priceLabel.text = String(format: "Only %.2lf tk", now.price!)
        cell.quantityLabel.text = String(format: "%d pc", now.quantity!)
        cell.imgView.image = UIImage(named: now.name!)
        
      
        return cell
    }
    
    
    
}
