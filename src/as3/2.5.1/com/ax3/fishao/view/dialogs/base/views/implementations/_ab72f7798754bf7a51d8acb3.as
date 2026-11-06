package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _ab72f7798754bf7a51d8acb3 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _7d7922f35296b69ab61ffb4a:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၚဘၨဉოဝჃჽၬႆႤხၧ၄ეၲ၏၍ၼၜფဲ၎Ⴛ","Ⴜრაၽြ၊ေႶჃ႐ოဤး႒ღႦ");
      
      private static const _aabad2766d7a10d3aa0a52a5:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挒掗揔捏捏捚据握挀揙捊揉挎揃揨捫挐挐換挃捵捄接揙揖揁捙揲","掭捥挾採挲掐揕掤捧挋挠挲捄揤挲捾");
      
      private static const _64a4cfa5eb1a084d52527e58:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဩဿးၸႈწ႔ႇႋჩႭၒ჆Ⴙၵၾၭს႑နၻဗႏၚჶဘ","ၲჅყ၇ဓၪႷအၪေၘၘჿ၂ဟტ");
      
      private static const _a1113d7329339576704894b0:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႫၻၝჸႼ႗၍ိွ႔္ွბၽဪွცဨ","დၬႤံ၃Ⴄၬ၄Ⴁ၁ႆၸჿၝ႞ჱ");
      
      private var _8f755e26e08cbfd1c16eea93:DisplayObjectContainer;
      
      private var _67a0e611773704682b15c3bf:TextField;
      
      private var _edc80a364b552d97857401c4:DisplayObject;
      
      private var _d69a0964df14cf4f6b96a223:DisplayObject;
      
      private var _874fa2ba0996d01ea0cd6c71:DisplayObject;
      
      private var _92d8b975401beb9fc8440c21:Number;
      
      public function _ab72f7798754bf7a51d8acb3(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._8f755e26e08cbfd1c16eea93 = param2;
         super(param1,this._8f755e26e08cbfd1c16eea93);
         this.init();
      }
      
      public function set text(param1:String) : void
      {
         this._67a0e611773704682b15c3bf.text = param1;
         this._67a0e611773704682b15c3bf.width = this._67a0e611773704682b15c3bf.textWidth + (0x413DDC2A ^ 0x40155FD9 ^ 0x4C1AB76B ^ 0x4D32349D);
         this._737323fa4dec0f955446ab5a();
      }
      
      private function init() : void
      {
         this._edc80a364b552d97857401c4 = Debug.assertProperty(this._8f755e26e08cbfd1c16eea93,_7d7922f35296b69ab61ffb4a,DisplayObject);
         this._d69a0964df14cf4f6b96a223 = Debug.assertProperty(this._8f755e26e08cbfd1c16eea93,_aabad2766d7a10d3aa0a52a5,DisplayObject);
         this._874fa2ba0996d01ea0cd6c71 = Debug.assertProperty(this._8f755e26e08cbfd1c16eea93,_64a4cfa5eb1a084d52527e58,DisplayObject);
         this._67a0e611773704682b15c3bf = Debug.assertProperty(this._8f755e26e08cbfd1c16eea93,_a1113d7329339576704894b0,TextField);
         this._92d8b975401beb9fc8440c21 = this._8f755e26e08cbfd1c16eea93.x + this._8f755e26e08cbfd1c16eea93.width / (-903349424 ^ 0x3B97B2C3 ^ 0x2E48F1A2 ^ -537348045);
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         this._737323fa4dec0f955446ab5a();
      }
      
      private function _737323fa4dec0f955446ab5a() : void
      {
         this._d69a0964df14cf4f6b96a223.width = int(this._67a0e611773704682b15c3bf.width + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勥劧劼刡剖刹到勦劊剀勣刴剱制助剠刜剩刌勧勍前刡勫","勩剋别劇劋剞剞力刖勨刁勆勔劢切劺"));
         this._d69a0964df14cf4f6b96a223.x = int(this._edc80a364b552d97857401c4.width);
         this._874fa2ba0996d01ea0cd6c71.x = int(this._d69a0964df14cf4f6b96a223.x + this._d69a0964df14cf4f6b96a223.width);
         this._8f755e26e08cbfd1c16eea93.x = int(this._92d8b975401beb9fc8440c21 - source.width / (-516065230 ^ 0x7C92130F ^ 0x5D0CE03E ^ -1063023871));
      }
   }
}

