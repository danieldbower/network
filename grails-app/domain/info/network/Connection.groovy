package info.network

/**
 * A Network Connection for a Server
 * @author daniel
 *
 */
class Connection {
	String address
	
	static belongsTo = Server
	
    static constraints = {
    }
	
	String toString(){
		address
	}
}
