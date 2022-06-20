class discover {
   String? image,title,location,ratting,id,price;

   discover({
     this.image,
     this.location,
     this.price,
     this.title,
     this.ratting,
     this.id
   });
}
   List<discover> discoverArray = [

     discover(
       id: "1",
       image: "assets/image/image_recipe/detailRecipe.png",
       location: "87 Botsford",
       price: "\$20.00",
        title: "Glutten Spaghetti with Tomatoes",
        ratting: "4.3"
     ),
     discover(
       id: "2",
       image: "assets/image/image_recipe/recipe5.png",
       location: "87 Botsford",
       price: "\$20.00",
        title: "The Cheeses Guide",
        ratting: "4.3"
     ),
     discover(
       id: "3",
       image: "assets/image/image_recipe/recipe6.png",
       location: "Gilison London",
       price: "\$25.00",
        title: "Garage Bar Seafood",
        ratting: "4.1"
     ),
     discover(
       id: "4",
       image: "assets/image/image_recipe/recipe7.png",
       location: "Spagheti Kilimanjaro",
       price: "\$30.00",
        title: "Netherland",
        ratting: "4.2"
     ),
     discover(
       id: "5",
       image: "assets/image/image_recipe/recipe8.png",
       location: "Gangtok Vegetable",
       price: "\$35.00",
        title: "Nepal",
        ratting: "4.7"
     ),
     discover(
       id: "6",
       image: "assets/image/image_recipe/recipe9.jpg",
       location: "Soup Caikaki",
       price: "\$40.00",
        title: "Orlando",
        ratting: "4.6"
     ),
   ];

