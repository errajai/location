package location

class Vehicule {

    String marque
    String matricule
    Integer kilometrage
    String type
    String coleur 
    String carburant
    Integer nbrPlace
    
    static hasMany = [reservations :Reservation]
    static constraints = {
        type(inList:["moto","auto"])
    }
    
}
