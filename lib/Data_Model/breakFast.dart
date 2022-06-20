class breakFast {
   String? image,title,location,ratting,id,price;

   breakFast({
     this.image,
     this.location,
     this.title,
     this.price,
     this.ratting,
     this.id
   });
}
   List<breakFast> breakFastArray = [

     breakFast(
       id: "321",
       image: "assets/image/image_recipe/recipe10.jpg",
       location: "87 Botsford",
        title: "The Cheeses Guide",
       price: "\$20.00",
        ratting: "4.3"
     ),
    
     breakFast(
       id: "2342",
       image: "assets/image/image_recipe/recipe11.jpg",
       location: "Gilison London",
       price: "\$24.00",
        title: "Garage Bar Seafood",
        ratting: "4.1"
     ),
     
     breakFast(
       id: "3231",
       image: "assets/image/image_recipe/recipe12.jpg",
       location: "Netherland",
       price: "\$25.00",
        title: "Spagheti Kilimanjaro",
        ratting: "4.2"
     ),

     breakFast(
       id: "4321",
       image: "assets/image/image_recipe/recipe13.jpg",
       location: "Nepal",
       price: "\$30.00",
        title: "Gangtok Vegetable",
        ratting: "4.4"
     ),

     breakFast(
       id: "554",
       image: "assets/image/image_recipe/recipe14.jpg",
       location: "Nepal",
       price: "\$35.00",
        title: "Soup Caikaki",
        ratting: "4.6"
     ),
   ];

