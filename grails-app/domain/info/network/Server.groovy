package info.network

class Server {

	String host
	String description
	
	static hasOne = [platform: Platform, serverType: ServerType]
	static hasMany=[connections: Connection, services:Service]
	
    static constraints = {
    }
	
	String toString(){
		host
	}
}
