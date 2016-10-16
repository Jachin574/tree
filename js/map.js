//初始化地图对象，加载地图

    var map = new AMap.Map('mapContainer',{

            resizeEnable: true,

            zoom: 16,

            center: [113.536073, 22.349821]

    });

	 var buildings = new AMap.Buildings();

        // 在map中添加3D楼块图层

        buildings.setMap(map);

     var icon = new AMap.Icon({

            image : './images/tree.png',//24px*24px

            //icon可缺省，缺省时为默认的蓝色水滴图标，

            size : new AMap.Size(20,25),



    });





var markers = [
{title:"梧桐树",imageOffset: {width:0,height:3},position:[113.527393,22.347139]}

];

    var posXY = document.getElementsByTagName("td");
    for(var i=0; i<posXY.length; i=i+2){
    
        var pos  = 
            {
                "position" : [posXY[i].innerHTML,posXY[i+1].innerHTML]
            }
        markers.push(pos);
    }


var infoWindow = new AMap.InfoWindow({offset:new AMap.Pixel(0,-30)});
for(var i = 0; i < markers.length; i++ ){
    var marker=new AMap.Marker({

            position:markers[i].position,

            icon:icon,

            map:map,

            // title:markers[i].title,

          });

        // marker.url=markers[i].url;

        // marker.on('click',markerClick);

        

    }

    // function markerClick(e){

    //     window.navigate("e.event.url");

    // }



map.setFitView();

