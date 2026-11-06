package com.ax3.fishao.display.panels
{
   import assets.common.CollectionsWidget;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class CollectionsGirlWidget extends CollectionsWidget
   {
      
      private static var disableColorMatrix:ColorMatrix = new ColorMatrix([0.29140390000000005,0.643644,0.0649521,0,0.25,0.19140390000000002,0.743644,0.0649521,0,0.25,0.19140390000000002,0.643644,0.1649521,0,0.25,0,0,0,1,0]);
      
      private static var DISABLE_FILTERS:Array = [disableColorMatrix.filter];
      
      private var _tooltipViewX:int;
      
      public function CollectionsGirlWidget()
      {
         super();
         name = "CollWidget";
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TextField(tooltip.getChildByName("label")).text = I18n.getUpper("collectionsWidgetLabel");
         this._tooltipViewX = tooltip.x;
         tooltip.x -= tooltip.width;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,0.5,{"x":this._tooltipViewX},{"ease":Cubic.easeOut});
      }
      
      private function onMouseOut(param1:Event) : void
      {
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,0.5,{"x":this._tooltipViewX - tooltip.width},{"ease":Cubic.easeOut});
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
         app.dialogFactory.getCollectionsSwfDialog().show();
      }
      
      public function destroy() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      public function deactivate() : void
      {
         if(hasEventListener(MouseEvent.CLICK))
         {
            removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         }
      }
      
      public function disable() : void
      {
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.filters = DISABLE_FILTERS;
      }
      
      public function enable() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.filters = [];
      }
      
      override public function get height() : Number
      {
         return 75;
      }
   }
}

