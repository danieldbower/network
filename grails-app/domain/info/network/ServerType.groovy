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
	
	/**
	* This class is a reference table for the most part, This method will load the default choices to the database.
	*/
	static void loadDefaultsInstancesToDB(){
		new ServerType(name:"Web", description:"Web Server").save()
		new ServerType(name:"Print", description:"Print Server").save()
		new ServerType(name:"Database", description:"Database Server").save()
		new ServerType(name:"File", description:"File Server").save()
		new ServerType(name:"App", description:"Application Server").save()
		new ServerType(name:"Network", description:"DHCP, DNS Server").save()
		new ServerType(name:"Router", description:"Router").save()
	}
}
