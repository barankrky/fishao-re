package com.ax3.fishao.view.dialogs.base.views.implementations.improvable
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _5f1c0f7d981f2b4a82612e61 extends _04cce4e240ff9bea66c1b7f7
   {
      
      protected static const INSTANCE_NAME_LABEL_TITLE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჂဌၸႻၡရჺူၨနၭ႘၅ჷ၍ეႡჅိဟၬ၄႕ၠဗ჎჻ဃ","ဳၗူၽၛჭ၌ဲ်ဉႻ၁ჱႢფႴ");
      
      protected static const INSTANCE_NAME_VIEW_LEVEL_INFO:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿掰捒挛插掶挴揌揎握掂揍揌振掭捛掿捄捒挖挔捽捑捇挀指捣掕掚挓揋挱揦掙","掔掹捨揈捘掛捈插捷捠揗揌揝捖挾持");
      
      private var _c7c34c59572f39459c86db62:DisplayObjectContainer;
      
      private var _6708f149720271f71f93d1ba:DisplayObjectContainer;
      
      private var _8b9b64a12c6963f6114596bd:TextField;
      
      public function _5f1c0f7d981f2b4a82612e61(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._c7c34c59572f39459c86db62 = param2;
         super(param1,this._c7c34c59572f39459c86db62);
         this.init();
      }
      
      public function set number(param1:uint) : void
      {
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_IMPROVABLE_LEVEL_INFO);
         this._8b9b64a12c6963f6114596bd.text = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LEVEL,param1);
      }
      
      public function get sourceLevelInfo() : DisplayObjectContainer
      {
         return this._6708f149720271f71f93d1ba;
      }
      
      private function init() : void
      {
         this._8b9b64a12c6963f6114596bd = Debug.assertProperty(this._c7c34c59572f39459c86db62,INSTANCE_NAME_LABEL_TITLE,TextField);
         this._6708f149720271f71f93d1ba = Debug.assertProperty(this._c7c34c59572f39459c86db62,INSTANCE_NAME_VIEW_LEVEL_INFO,DisplayObjectContainer);
      }
   }
}

