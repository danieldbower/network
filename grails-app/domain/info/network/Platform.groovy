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
	
	/**
	 * This class is a reference table for the most part, This method will load the default choices to the database.
	 */
	static void loadDefaultsInstancesToDB(){
		new Platform(name:"Ubuntu 8.04 LTS", description:"Hardy Heron").save()
		new Platform(name:"Ubuntu 10.04 LTS", description:"Lucid Lynx").save()
		new Platform(name:"Debian 5.0", description:"Lenny").save()
		new Platform(name:"Debian 6.0", description:"Squeeze").save()
		new Platform(name:"Centos 5.6", description:"").save()
		new Platform(name:"Centos 6", description:"").save()
	}
}
