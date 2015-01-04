package location

class Client {
    
    String nom
    String prenom
    String cin
    String typePermis= "B"
    static hasMany = [reservations:Reservation]
    
    static constraints = {
        typePermis(inList:["A", "B"])
    }
}
