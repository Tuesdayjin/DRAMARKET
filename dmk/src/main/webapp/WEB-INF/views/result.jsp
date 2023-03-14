<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Amalia.js</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!--amalia.js-->
<script type="text/javascript" src="http://localhost:8081/flask/full/bower_components/jquery/dist/jquery.js"></script>
<script type="text/javascript" src="http://localhost:8081/flask/full/bower_components/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://localhost:8081/flask/full/bower_components/raphael/raphael.js"></script>        
<link href="http://localhost:8081/flask/full/build/css/amalia.js.min.css" type="text/css" rel="stylesheet" />
<script src="http://localhost:8081/flask/full/build/js/amalia.js.min.js" type="text/javascript"></script> 
<script type="text/javascript" src="http://localhost:8081/flask/full/build/js/amalia.js-plugin-timeline.min.js"></script>
<script type="text/javascript" src="http://localhost:8081/flask/full/build/js/i18n/amalia.js-message-en.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>Plugin timeline</h1>  
            </div>
            <div class="content">           
                <div class="demo">
                    <div style="height: 350px;">
                        <div id="defaultPlayer"></div>
                    </div>
                    <div id="timeline"></div>
                    <script>
                        $( function () {
                            $( "#defaultPlayer" ).mediaPlayer( {
                                autoplay : false,
                                src : "http://localhost:8081/flask/upload/${fileName}.mp4",
                                controlBar :
                                    {
                                        sticky : true
                                    },
                                
                                plugins : {
                                    dataServices : [

                                        'http://localhost:8081/flask/pyscene/result/${fileName}.json'
  
                                    ],
                                    list : [
                                        {
                                            'className' : 'fr.ina.amalia.player.plugins.TimelinePlugin',
                                            'container' : '#timeline',
                                            'parameters' : {
                                                listOfLines : [
                                                
                                                    {
                                                        title : 'Keyframes every 2s',
                                                        type : 'image',
                                                        metadataId : '${fileName}',
                                                        pointNav : true
                                                    }
                                                ]
                                            }
                                        }
                                    ]
                                }
                            } );
                        } );
                    </script>
                    
                </div>
            </div>

        </div>
    </body>
</html>