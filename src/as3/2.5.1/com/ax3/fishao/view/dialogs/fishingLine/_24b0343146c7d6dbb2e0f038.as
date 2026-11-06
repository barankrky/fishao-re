package com.ax3.fishao.view.dialogs.fishingLine
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _24b0343146c7d6dbb2e0f038 extends _009582d19d1c5695c49f2ed8
   {
      
      protected var _viewText:_73899a4de8f83c8d2c26f545;
      
      public function _24b0343146c7d6dbb2e0f038()
      {
         super(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႷၖႥပႾၗ၂ဝႪჃႩၡၛႄဋკ၀ႦႡၐၷဖၖ၉ჽၫီ჌႗შჄယဏေွჵ။Ⴋ","ტၙသ႕ဌთჅဿ჊Ⴌ၏ჺငცႠၲ"));
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰剎刓剈剃勵勡勁劔勋勰劲刧務劂劔剚勴勏劤则勢劑剫","勁劃剩創劐别勃刍勉剄劶剟削勀剠勉"),DisplayObjectContainer);
         this._viewText = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(_loc1_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ტჂჷဂဗတ၅უဂშဓ၁ႁၛႚჰ჎ႛ","ლႜ႐၁ჼၩჰဟბ჉်ၬ႟Ⴜგၧ"),TextField));
         this._viewText.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FISHING_LINE_TEXT);
      }
   }
}

