package com.junkbyte.console.addons.watcher
{
   import com.ax3.fishao.debug.Watch;
   import com.junkbyte.console.Console;
   import com.junkbyte.console.view.ConsolePanel;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   
   public class WatchPanel extends ConsolePanel
   {
      
      public static const NAME:String = "watchPanel";
      
      public static var numOfFramesToUpdate:uint = 30;
      
      private var rootDisplay:DisplayObject;
      
      private var mapIndex:uint;
      
      private var openings:Dictionary;
      
      private var framesSinceUpdate:uint;
      
      public function WatchPanel(param1:Console)
      {
         super(param1);
         name = NAME;
         init(60,100,false);
         txtField = makeTF("mapPrints");
         txtField.multiline = true;
         txtField.autoSize = TextFieldAutoSize.LEFT;
         registerDragger(txtField);
         addChild(txtField);
      }
      
      public function start() : void
      {
         console.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
      }
      
      public function stop() : void
      {
         console.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         ++this.framesSinceUpdate;
         if(this.framesSinceUpdate >= numOfFramesToUpdate)
         {
            this.framesSinceUpdate = 0;
            this.update();
         }
      }
      
      public function update() : void
      {
         this.mapIndex = 0;
         txtField.htmlText = "<p><p2>" + Watch.generateTextReport() + "</p2></p>";
         width = txtField.width + 4;
         height = txtField.height;
      }
      
      override public function close() : void
      {
         this.stop();
         super.close();
      }
   }
}

