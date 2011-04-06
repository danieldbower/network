package info.network

/**
 * The process by which a server can be created
 * @author daniel
 *
 */
class BuildScript implements Comparable{
	Integer version = 0
	String text
	
	static belongsTo = Server
	
    static constraints = {
    }
	
	int compareTo(Object o){
		if(Object instanceof BuildScript){
			throw new ClassCastException("Cannot compare object of class ${o.getClass().toString()} to a BuildScript")
		}
		return (version.compareTo(o.version))
	}
	
	String toString(){
		version.toString()
	}
}
