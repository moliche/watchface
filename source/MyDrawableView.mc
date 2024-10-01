import Toybox.Graphics;
import Toybox.WatchUi;

class MyDrawableView extends WatchUi.View {
    var myShapes;

    function initialize() {
        View.initialize();
        myShapes = new Rez.Drawables.shapes();
    }

    function onUpdate(dc) {
        dc.setColor(
            Graphics.COLOR_WHITE,
            Graphics.COLOR_BLACK
        );
        dc.fillRectangle(
            0,
            0,
            dc.getWidth(),
            dc.getHeight()
        );
        myShapes.draw(dc);
    }
}