package info.network

/**
 * Linux Distro etc
 * @author daniel
 * 
 */
class Platform {
	String name
	String description
	
	static hasMany=[servers:Server]
    
	static constraints = {
    }
	
	String toString(){
		name
	}
}
