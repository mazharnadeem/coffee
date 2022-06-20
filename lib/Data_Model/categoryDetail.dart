class category {
   String? image,title,location,ratting,id,price;

   category({
     this.image,
     this.location,
     this.title,
     this.price,
     this.ratting,
     this.id
   });
}
   List<category> categoryArray = [

     category(
       id: "5s21",
       image: "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
       location: "87 Botsford",
        title: "The Cheeses Guide",
       price: "\$20.00",
        ratting: "4.3"
     ),
    
     category(
       id: "23242",
       image: "https://images.pexels.com/photos/1199959/pexels-photo-1199959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
       location: "Gilison London",
       price: "\$24.00",
        title: "Garage Bar Seafood",
        ratting: "4.1"
     ),
     
     category(
       id: "32g31",
       image: "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
       location: "Netherland",
       price: "\$25.00",
        title: "Spagheti Kilimanjaro",
        ratting: "4.2"
     ),

     category(
       id: "4f321",
       image: "https://images.pexels.com/photos/2098116/pexels-photo-2098116.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
       location: "Nepal",
       price: "\$30.00",
        title: "Gangtok Vegetable",
        ratting: "4.4"
     ),

     category(
       id: "55x4",
       image: "https://images.pexels.com/photos/2067473/pexels-photo-2067473.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
       location: "Nepal",
       price: "\$35.00",
        title: "Soup Caikaki",
        ratting: "4.6"
     ),
   ];

