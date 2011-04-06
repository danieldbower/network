package info.network

/**
 * Server refers to a physical or virtual machine which generally has a cpu, ram, storage, and a network connection 
 * @author daniel
 *
 */
class Server {

	String host
	String description
	String assetTag
	
	// true for physical
	Boolean physicalOrVirtual = false
	
	static hasOne = [platform: Platform, serverType: ServerType, priority:Priority]
	static hasMany=[connections: Connection, services:Service, buildScripts:BuildScript]
	
    static constraints = {
    }
	
	String toString(){
		host
	}
}
