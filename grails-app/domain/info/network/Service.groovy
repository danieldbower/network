package info.network

/**
 * A Service is a process a server exposes - it contains specific details about that process and runs on only one server
 * @author daniel
 *
 */
class Service {
	String name
	String description
	
	static belongsTo = Server
	
	static hasOne = [priority:Priority]
	
    static constraints = {
    }
	
	String toString(){
		name
	}
}
