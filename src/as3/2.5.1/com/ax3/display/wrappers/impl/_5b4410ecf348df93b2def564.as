package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _5b4410ecf348df93b2def564 extends Sprite implements IAssetWrapper, _5851c671824f640d4d36d175
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _e4e82ad93d9ac1cdc8808ef6:TextField;
      
      public function _5b4410ecf348df93b2def564()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._e4e82ad93d9ac1cdc8808ef6 = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝掗捞捼掯掅挢振捥指捞揰捱挆握挾捽掳捺捀挊挫挹换捴挽","捒捠挩挹挲捐捉捧採挎挴挿挓掭捆揮")) as TextField;
         this._e4e82ad93d9ac1cdc8808ef6.mouseEnabled = false;
         MovieClip(this._asset).buttonMode = true;
         addChild(this._asset);
      }
      
      public function set data(param1:Object) : void
      {
         if(this._e4e82ad93d9ac1cdc8808ef6 != null && param1 is String)
         {
            this._e4e82ad93d9ac1cdc8808ef6.text = String(param1);
         }
      }
      
      public function get data() : Object
      {
         return this._e4e82ad93d9ac1cdc8808ef6.text;
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
      }
      
      public function select() : void
      {
         MovieClip(this._asset).gotoAndStop(-747238723 ^ -2079059195 ^ 0x5D4C2A46 ^ 0x0A2E33FC);
      }
      
      public function _678ceacf432987771c441f34() : void
      {
         MovieClip(this._asset).gotoAndStop(-350382511 ^ -985545713 ^ 0x2DD69650 ^ 0x038AC40F);
      }
      
      public function get isSelected() : Boolean
      {
         return MovieClip(this._asset).currentFrame == (0x7AB44297 ^ 0x2ACA752F ^ 0x7A6B13D6 ^ 0x2A15246C);
      }
   }
}

