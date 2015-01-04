package location

class Reservation {

    Date date
    Integer duree
    
    
    static belongsTo=['Vehicule','Client']      
    static constraints = {
    }
}
