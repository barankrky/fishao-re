package com.ax3.fishao.view.dialogs.moneyTree
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
   
   public class _d46c85de617db133f4dce5a1 extends _009582d19d1c5695c49f2ed8
   {
      
      protected var _viewText:_73899a4de8f83c8d2c26f545;
      
      public function _d46c85de617db133f4dce5a1()
      {
         super(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႏၹသღ჉ၵႭ႒ლေႹတ჆ქၠ၇჈Ⴜၲ၀ီ၆ႈძ္჌Ⴊဆ჌ႍ၀ဨჲႽ","ဂႪါჄბჿეფჷၖၘჅჶ႘၌ႜ"));
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剖剔剤刹劚劥劂劷劲劼勝劇刔刔勔勩勧劁剠制劯勹劁剎","勷劅勃勨剞创勺剀刪刭勪募剑剑劐刪"),DisplayObjectContainer);
         this._viewText = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(_loc1_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刍劢剷剆劅刖刦勬剕删剼勣功剧劧劊劏刮","初剙刌刉創劻刜剮剓剳劂労劀勔勲劉"),TextField));
         this._viewText.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_MONEY_TREE_TEXT);
      }
   }
}

