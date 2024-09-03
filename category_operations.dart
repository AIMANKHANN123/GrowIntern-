
import 'package:spotify_app/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category(
        'Top Nasheeds',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWkLSXzxuQqfMVm2FPD5pdF09ZSxQZfgrJcQ&s'
        
      ),
      Category(
        'MJ Hits',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhQET7UpbZdXCytNbn0do-jqdq36TES9uzyQ&s'

      ),
      Category(
        'Smile',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhQET7UpbZdXCytNbn0do-jqdq36TES9uzyQ&s'),

      Category(
        'Band',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaAEHDXOVDQ1yHLL7OpzIMMs9TzKDRoX9aHg&s'),

        
      Category(
        'Friends',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNf1s9PXGJ-FXWvOPt2Oi1nSwqYsRRAWzyUg&s'

      ),
      Category(
        'Weddings',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxjSnyUJltmPVD8v_bD6h3Dfuzg5wvFa91rQ&s'

      )
    ];
  }
}


















