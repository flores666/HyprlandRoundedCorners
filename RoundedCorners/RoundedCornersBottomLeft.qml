import QtQuick 2.15
import Quickshell
import "../globals"

PanelWindow {
	id: bottomLeftCorner
	anchors {
		bottom: true
		left: true
	}
	implicitWidth: 20
	implicitHeight: 20
	color: "transparent" // окно полностью прозрачное

	Canvas {
		anchors.fill: parent
		onPaint: {
			var ctx = getContext("2d");
			ctx.clearRect(0, 0, width, height);

			var radius = 25;

			ctx.fillStyle = Globals.mainColor;
			ctx.beginPath();
			ctx.moveTo(0, height - radius);
			ctx.quadraticCurveTo(0, height, radius, height);
			ctx.lineTo(0, height);
			ctx.closePath();
			ctx.fill();    
		}
	}
}
