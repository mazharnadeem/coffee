class lunch {
   String? image,title,location,ratting,id,price;

   lunch({
     this.image,
     this.location,
     this.title,
     this.price,
     this.ratting,
     this.id
   });
}
   List<lunch> lunchArray = [

     lunch(
       id: "5s21",
       image: "assets/image/plate_food/4.png",
       location: "87 Botsford",
        title: "The Cheeses Guide",
       price: "\$20.00",
        ratting: "4.3"
     ),
    
     lunch(
       id: "23242",
       image: "assets/image/plate_food/9.png",
       location: "Gilison London",
       price: "\$24.00",
        title: "Garage Bar Seafood",
        ratting: "4.1"
     ),
     
     lunch(
       id: "32g31",
       image: "assets/image/plate_food/19.png",
       location: "Netherland",
       price: "\$25.00",
        title: "Spagheti Kilimanjaro",
        ratting: "4.2"
     ),

     lunch(
       id: "4f321",
       image: "assets/image/plate_food/17.png",
       location: "Nepal",
       price: "\$30.00",
        title: "Gangtok Vegetable",
        ratting: "4.4"
     ),

     lunch(
       id: "55x4",
       image: "assets/image/plate_food/12.png",
       location: "Nepal",
       price: "\$35.00",
        title: "Soup Caikaki",
        ratting: "4.6"
     ),
   ];

