package info.network

/**
 * Web, File, Print, etc
 * @author daniel
 *
 */
class ServerType {
	String name
	String description
	
	static hasMany=[servers:Server]
	
    static constraints = {
    }
	
	String toString(){
		name
	}
}
