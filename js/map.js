//��ʼ����ͼ���󣬼��ص�ͼ

    var map = new AMap.Map('mapContainer',{

            resizeEnable: true,

            zoom: 16,

            center: [113.536073, 22.349821]

    });

	 var buildings = new AMap.Buildings();

        // ��map�����3D¥��ͼ��

        buildings.setMap(map);

     var icon = new AMap.Icon({

            image : './images/tree.png',//24px*24px

            //icon��ȱʡ��ȱʡʱΪĬ�ϵ���ɫˮ��ͼ�꣬

            size : new AMap.Size(20,25),



    });





var markers = [
{title:"��ͩ��",imageOffset: {width:0,height:3},position:[113.527393,22.347139]}

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

