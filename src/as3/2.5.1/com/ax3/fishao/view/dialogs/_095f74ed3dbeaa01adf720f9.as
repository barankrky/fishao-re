package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _095f74ed3dbeaa01adf720f9 extends _8256b1324608dc993f5220be implements IBaseDialog
   {
      
      protected var _backGroundLayer:Sprite;
      
      protected var _content:Sprite = new Sprite();
      
      public function _095f74ed3dbeaa01adf720f9()
      {
         super();
         this._backGroundLayer = new Sprite();
         super.addChild(this._backGroundLayer);
         super.addChild(this._content);
      }
      
      protected function _d6b22cbb525de1a39214ed4c(param1:Event) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_052_UI_Close_menu);
         close();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         return this._content.addChild(param1);
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = int(param3 / (0x46CDE173 ^ 0x78CD5373 ^ -736715511 ^ -367644917) - this.width / (0x118AA070 ^ -823945018 ^ 0x08511113 ^ -684185177) + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劭剕勋剄剼勦剆勩势勼剏剨刋刴剦刁剣别劊勚劳剃剃劂","动勲刖刼刺刧劊刋劭刨勃刃勵劵劑刼"));
         this.y = int(param4 / (0x69057292 ^ -2065350522 ^ 0x3FD7612F ^ -768126151) - this.height / (0x2795E3F0 ^ 0x32F007CB ^ 0x576CC66F ^ 0x42092256) + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掀挻掗捵掣換揢揢掓挈挐挎捪揋挆挶揃捑掣揵挽揿掆掞","揪揌捬揼掓损揹揶揵揓挾揞捶捻掚捄"));
      }
      
      public function get content() : Sprite
      {
         return this._content;
      }
   }
}

