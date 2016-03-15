import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "scrollview.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("scrollview")

        ScrollView {
            id: scrollview
            anchors.fill: parent

            Image {
                source: "images/bigpic.jpg"
                width: sourceSize.width
                height: sourceSize.height
            }

           Component.onCompleted: {
               var keys = Object.keys(scrollview);
               for( var i = 0; i < keys.length; i++ ) {
                   var key = keys[ i ];
                   var data = key + ' : ' + scrollview[ key ];
                   console.log(data )
               }
           }
        }
    }
}

