<html>
    <head>
        <title>Welcome to Grails</title>
        <meta name="layout" content="main" />
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:280px;
            margin-right:20px;
        }
        </style>
    </head>
    <body>
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                    <h1>Categories</h1>
                    <ul>
                        <li class="controller"><g:link controller="platform">Platforms</g:link></li>
                        <li class="controller"><g:link controller="priority">Priorities</g:link></li>
                        <li class="controller"><g:link controller="serverType">Server Types</g:link></li>
                    </ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
            <h1>Welcome to Network</h1>
            <p></p>

            <div id="controllerList" class="dialog">
                <h2>Server</h2>
                <ul>
                    <li><g:link controller="server">Servers</g:link></li>
                </ul>
                <h2>These need to be integrated with the Server functionality</h2>
                <ul>
                    <li><g:link controller="buildScript">Build Scripts</g:link></li>
                    <li><g:link controller="service">Services</g:link></li>
                </ul>
            </div>
        </div>
    </body>
</html>
