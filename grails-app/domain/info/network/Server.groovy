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
	
	static belongsTo = ServerType
	static hasOne = [platform: Platform, priority:Priority]
	static hasMany=[connections: Connection, services:Service, buildScripts:BuildScript, serverType: ServerType]
	
    static constraints = {
		host(blank:false)
		description(maxSize:256)
		assetTag(maxSize:256)
    }
	
	String toString(){
		host
	}
}
