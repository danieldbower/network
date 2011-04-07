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
		name(blank:false)
		description(maxSize:256)
    }
	
	String toString(){
		name
	}
}
