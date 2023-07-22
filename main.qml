import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Window {
    id: main
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "black"
        Rectangle{
            id: circ1
            x:50; y:20
            width: 30
            height:30
            radius: circ1.width/2
            color: "cyan"
            OpacityAnimator{ target: circ1; from: 1; to: 0; duration: 4000; running: true; loops: 20}
                NumberAnimation on x { to: 110; duration: 4000}
                NumberAnimation on y { to: 200; duration: 4000 }
            Text {
                anchors.centerIn: parent
                text: "1"
            }
        }
        Rectangle{
            id: circ2
            x: 200; y: 100
            width: 30
            height:30
            radius: circ2.width/2
            color: "cyan"
            OpacityAnimator{ target: circ2; from: 1; to: 0; duration: 4000; running: true; loops: 20}
                NumberAnimation on x { to: 150; duration: 4000}
                NumberAnimation on y { to: 150; duration: 4000 }
            Text {
                anchors.centerIn: parent
                text: "2"
            }
        }
        Rectangle{
            id: circ3
            x: 230
            y: 280
            width: 30
            height:30
            radius: circ3.width/2
            color: "cyan"
            OpacityAnimator{ target: circ3; from: 1; to: 0; duration: 4000; running: true; loops: 20}
                NumberAnimation on x { to: 190; duration: 4000}
                NumberAnimation on y { to: 80; duration: 4000 }
            Text {
                anchors.centerIn: parent
                text: "3"
            }
        }
    Rectangle{
        id: rect1;
        width: parent.width/4
        height: parent.height/4
        anchors.centerIn: parent
        color: "teal"
        radius: 5
        SequentialAnimation{
            ScaleAnimator  {
                target: rect1
                from: 1;
                to: 0.5;
                duration: 2500
                loops:20
            }
            ScaleAnimator  {
                target: rect1
                from: 0.5;
                to: 1;
                duration: 500
                loops:20
            }
        }
        OpacityAnimator{
            target: rect1;
            from: 0;
            to: 1;
            duration: 2500
            running: true
            loops:20
        }
    }
    Text {
        id: ntxtame; anchors.centerIn: parent; color: "white"; font.pixelSize: 20; font.family: "times new roman";  text: qsTr("text")
    }
}
