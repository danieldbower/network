package info.network

/**
 * The service level required.
 */
class Priority implements Comparable{
	String name
	String description
	Integer level = 0
	
	static hasMany=[servers:Server]
	
    static constraints = {
    }
	
	int compareTo(Object o){
		if(Object instanceof Priority){
			throw new ClassCastException("Cannot compare object of class ${o.getClass().toString()} to a Priority")
		}
		return (level.compareTo(o.level))
	}
	
	String toString(){
		name
	}
}
