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
		
    static constraints = {
		name(blank:false)
		description(maxSize:256)
    }
	
	String toString(){
		name
	}
}
