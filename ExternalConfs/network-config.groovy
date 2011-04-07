environments {
    development {
        dataSource {
            dbCreate = "update"
            pooled = true
            driverClassName = "org.postgresql.Driver"
            url = "jdbc:postgresql://localhost:5432/network"
            username = "network"
            password = "network"
            //logSql = true
        }
    }
}

log4j = {
        debug  'grails.app'
}

