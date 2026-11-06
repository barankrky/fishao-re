package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.view.dialogs.fishes.model._21587f0ac0bcbbbfdcd63026;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _d0a8af7675ce093102e12974 extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      public var fishName:TextField;
      
      public var isActive:Boolean = false;
      
      public var fishInfo:_cff30366d510ea862540bfef;
      
      public var userCaughtFish:_21587f0ac0bcbbbfdcd63026;
      
      public function _d0a8af7675ce093102e12974()
      {
         super();
      }
      
      public static function showBackgroundFunction(param1:_d0a8af7675ce093102e12974) : void
      {
         MovieClip(param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("နႮသဦ჻ခႛသခ჈ჟႱჍკხჴၤဥ႞჆၉ပ၅၁႖န။ၥ","ၔၵ၊ၺ႒ၖდအၬ၏မၣၠၰიၽ"))).gotoAndStop(-639976909 ^ -744516730 ^ -1053272541 ^ -880967788);
      }
      
      public static function clearBackgroundFunction(param1:_d0a8af7675ce093102e12974) : void
      {
         MovieClip(param1.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎励動劼分剬剩劔剼剦劲劫刮刐刚劏勄刦刘勃劒剔勝劧刅劶剌劆","勩勂勹勌勏劾刓功劁剳剃剄劉努劣动"))).gotoAndStop(-470658623 ^ 0x14BCC402 ^ -1009366753 ^ 0x3498DCDD);
      }
      
      public static function isBackgroundActiveFunction(param1:_d0a8af7675ce093102e12974) : Boolean
      {
         var _loc2_:DisplayObject = param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီჃႁၶွပဤ჉ြႾႬႄიၥျံჽღႫ႖ဝ႓ိၮႿთქၒ","ႯႡႻၕမၪႻႈ်ჵၤჳႦႯႁ္"));
         var _loc3_:int = MovieClip(_loc2_).currentFrame;
         return _loc3_ == (-1641705633 ^ -1068975360 ^ -1919112210 ^ -739139661);
      }
      
      public function process(param1:DisplayObject) : void
      {
         this.fishName = TextField(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ჲ႗ႠွၧჅၪၚႴဥჸၒႆြႧჇჂ၃ၙႸჸအჁ","ၢ჻ႜကၚჺႪႹႀ႖ე႙၂Ⴞၸჱ")));
         this.fishName.mouseEnabled = false;
         param1.name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ကဎဥၦဌ၈႔ჴၠႁျჽဵပဈၦႧჂტဨჳၢხჺေၐკပ","Ⴐဥညံ႑ႻტႶၻႱဓჿၝဏၛ჻");
         addChild(param1);
      }
      
      public function setData(param1:_cff30366d510ea862540bfef, param2:_21587f0ac0bcbbbfdcd63026) : void
      {
         this.fishInfo = param1;
         this.userCaughtFish = param2;
         this.isActive = param2 != null;
         var _loc3_:TextFormat = this.fishName.defaultTextFormat;
         _loc3_.bold = this.isActive;
         _loc3_.color = param2 ? _loc3_.color : 0x4B645515 ^ -688257112 ^ -1200828911 ^ 0x25583606;
         this.fishName.defaultTextFormat = _loc3_;
         this.fishName.setTextFormat(_loc3_);
         this.fishName.text = param1.displayName;
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1066508388 ^ -906468491 ^ 0x6B9E9D68 ^ -1644732802;
      }
   }
}

