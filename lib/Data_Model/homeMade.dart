class homeMadeData {
   String? image,title,location,ratting,id,price,distance;

   homeMadeData({
     this.image,
     this.location,
     this.title,
     this.price,
     this.ratting,
     this.id,
     this.distance
   });
}
   List<homeMadeData> homeMadeDataArray = [

     homeMadeData(
       id: "fdswe",
       image: "assets/image/image_recipe/recipe36.jpg",
       location: "87 Botsford",
        title: "The Cheeses Guide",
       price: "\$20.00",
        ratting: "4.3",
        distance: "42 km"
     ),
    
     homeMadeData(
       id: "vcxsad",
       image: "assets/image/image_recipe/recipe35.jpg",
       location: "Gilison London",
       price: "\$24.00",
        title: "Garage Bar Seafood",
        ratting: "4.1",
        distance: "63 km"
     ),
     
     homeMadeData(
       id: "xzvz",
       image: "assets/image/image_recipe/recipe34.jpg",
       location: "Netherland",
       price: "\$25.00",
        title: "Spagheti Kilimanjaro",
        ratting: "4.2",
        distance: "19 km"
     ),

     homeMadeData(
       id: "deqsa",
       image: "assets/image/image_recipe/recipe32.jpg",
       location: "Nepal",
       price: "\$30.00",
        title: "Gangtok Vegetable",
        ratting: "4.4",
        distance: "97 km"
     ),

     homeMadeData(
       id: "gfdewr",
       image: "assets/image/image_recipe/recipe31.jpg",
       location: "Nepal",
       price: "\$35.00",
        title: "Soup Caikaki",
        ratting: "4.6",
        distance: "23 km"
     ),
   ];

