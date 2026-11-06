package com.ax3.display.wrappers.impl
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _8ecc041b6b4976ac13bca1ac extends FrameButtonWrapper
   {
      
      private var _9c48f495d3b4df80325f1ce3:int = 5;
      
      private var _668ab2498a5db40b273c24e1:TextField;
      
      private var _ad1b7f8075db315cb7b0af71:DisplayObject;
      
      public function _8ecc041b6b4976ac13bca1ac()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._668ab2498a5db40b273c24e1 = TextField((_child as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳႥვვါ၇ဏသწ္ၯცၸ၌ႰႲႳႱ","ეၠဉၪဈလါႄჵၧჹ႙჆ჽႭბ")));
         this._ad1b7f8075db315cb7b0af71 = (_child as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წွၨၓႎჼႽၱၑႥဉ၈ှဲလၯၫვႺს၏၉ိბ","ဩႴ჎ၐၞ၍ကျးႡဉჶჿႍဃ၄"));
      }
      
      public function set coins(param1:int) : void
      {
         this._668ab2498a5db40b273c24e1.text = param1.toString();
         var _loc2_:Rectangle = this._668ab2498a5db40b273c24e1.getCharBoundaries(this._668ab2498a5db40b273c24e1.text.length - 1);
         this._ad1b7f8075db315cb7b0af71.x = int(this._668ab2498a5db40b273c24e1.x + _loc2_.right + this._9c48f495d3b4df80325f1ce3);
      }
   }
}

