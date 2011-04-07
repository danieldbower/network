import info.network.Platform
import info.network.Priority
import info.network.ServerType

class BootStrap {

    def init = { servletContext ->
		if(0==Platform.count()){
			Platform.loadDefaultsInstancesToDB()
		}
		
		if(0==Priority.count()){
			Priority.loadDefaultsInstancesToDB()
		}
		
		if(0==ServerType.count()){
			ServerType.loadDefaultsInstancesToDB()
		}
    }
	
    def destroy = {
    }
}
