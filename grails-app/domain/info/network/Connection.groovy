package info.network

/**
 * A Network Connection for a Server
 * @author daniel
 *
 */
class Connection {
	String address
	Boolean administrativeConnection = false
	
	static belongsTo = [server:Server]
	static hasOne = [server:Server]
	
    static constraints = {
		address(blank:false, maxSize:48)
    }
	
	String toString(){
		address
	}
	
	/*
	 * Check whether we have an ipv4 address, do ping/traceroute
	 */
}
