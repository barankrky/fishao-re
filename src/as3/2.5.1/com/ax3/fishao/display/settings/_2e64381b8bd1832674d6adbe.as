package com.ax3.fishao.display.settings
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _2e64381b8bd1832674d6adbe extends _2b7a3cb04ffcd1e3a128f15b
   {
      
      private static const _ff52fa6f6e7734e55ed4052e:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劙勋劂力労剁勛勩刲劎勾勬勨勝剀劫剣勳劌劫加剔剿勑劣勄剨勢","剿劤劖劮劋勓勰勩勷刹勶剜勜刢剏努");
      
      private static const _b6bca262c49eba43d002db7c:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၺ၈ီၖ჎ოႬოყဧ၂჈ჹၧၕშ჌ၲ","უဟႭႰ၄ငდၥၭფၤႳ႐ၖႦီ");
      
      private var _1d2a50c02e1364e5d981de0d:DisplayObject;
      
      private var _bd1a0dbfbeaf659793f81e6d:TextField;
      
      public function _2e64381b8bd1832674d6adbe(param1:_988093efdfa36e13bfd6c6cf, param2:MovieClip)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set amount(param1:int) : void
      {
         this._1d2a50c02e1364e5d981de0d.visible = param1 > (-2013810836 ^ -1626837748 ^ -490223207 ^ -96990215);
         this._bd1a0dbfbeaf659793f81e6d.text = limit(param1,0x59891967 ^ 0x3B8AE6F5 ^ -9250638 ^ -1653528799,-636949104 ^ 0x18B9BED1 ^ 0x42A72381 ^ -2146012983).toString();
      }
      
      private function init() : void
      {
         this._1d2a50c02e1364e5d981de0d = Debug.assertProperty(source,_ff52fa6f6e7734e55ed4052e);
         this._bd1a0dbfbeaf659793f81e6d = Debug.assertProperty(this._1d2a50c02e1364e5d981de0d,_b6bca262c49eba43d002db7c);
      }
   }
}

