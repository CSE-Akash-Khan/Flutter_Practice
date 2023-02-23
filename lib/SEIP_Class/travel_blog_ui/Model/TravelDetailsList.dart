class TravelDetailsList {
  String placeName;
  String location;
  String img;
  TravelDetailsList(this.placeName,this.location,this.img);

   static List<TravelDetailsList>TravelDetailsInfo(){
    return [
      TravelDetailsList("Blaeric Islands", "Bangladesh, ES", "images/travels/top1.jpg"),
      TravelDetailsList("Burigonga Islands", "India, MD", "images/travels/top2.jpg"),
      TravelDetailsList("Sajek Valley", "Spain, ES", "images/travels/top3.jpg"),
      TravelDetailsList("Saintmartin Islands", "Thailan, TH", "images/travels/top4.jpg"),
    ];
  }
  static List<TravelDetailsList>PopularList(){
     return [
       TravelDetailsList("Blaeric Islands", "Bangladesh, ES", "images/travels/bottom1.jpg"),
       TravelDetailsList("Sajek Velly", "Bangladesh, ES", "images/travels/bottom2.jpg"),
       TravelDetailsList("SaintMartin Islands", "Bangladesh, ES", "images/travels/bottom3.jpg"),
       TravelDetailsList("Bandarban hill", "England, ES", "images/travels/bottom4.jpg"),
       TravelDetailsList("Rangamati Islands", "India, ES", "images/travels/bottom5.jpg"),
     ];
  }
}