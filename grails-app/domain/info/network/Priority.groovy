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
		name(blank:false)
		description(maxSize:256)
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
	
	/**
	* This class is a reference table for the most part, This method will load the default choices to the database.
	*/
	static void loadDefaultsInstancesToDB(){
		new Priority(level:100, name:"Critical", description:"Infrastructure Systems that are required to be up before any other services are possible to be provided").save()
		new Priority(level:80, name:"High", description:"Systems with a strict service level agreement").save()
		new Priority(level:40, name:"Medium", description:"Business Systems with a medium service level agreement").save()
		new Priority(level:0, name:"Low", description:"Systems with a low service level agreement ").save()
	}
}
