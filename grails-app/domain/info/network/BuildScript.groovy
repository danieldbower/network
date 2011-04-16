package info.network

/**
 * The process by which a server can be created
 * @author daniel
 *
 */
class BuildScript implements Comparable{
	Integer scriptVersion = 0
	String text
	
	static belongsTo = Server
	static hasOne = [server:Server]
	
    static constraints = {
		text(blank:false, maxSize:32000)
    }
	
	int compareTo(Object o){
		if(Object instanceof BuildScript){
			throw new ClassCastException("Cannot compare object of class ${o.getClass().toString()} to a BuildScript")
		}
		return (scriptVersion.compareTo(o.scriptVersion))
	}
	
	String toString(){
		"$server V$scriptVersion"
	}
}
