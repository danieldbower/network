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
		name(blank:false)
		description(maxSize:256)
    }
	
	String toString(){
		name
	}
}
