class CategoryModel {
  final String imageUrl;
  final String categoryName;
  CategoryModel({required this.imageUrl, required this.categoryName});

  static List<CategoryModel> getListofCategories() {
    List<CategoryModel> categories = [
      CategoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          categoryName: "General"),
      CategoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80",
          categoryName: "Health"),
      CategoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80",
          categoryName: "Business"),
      CategoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80",
          categoryName: "Science"),
      CategoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
          categoryName: "Sports"),
    ];

    return categories;
  }
}
