package com.ax3.fishao.utils
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.net._ed45c0bbe1b74058bed8974a;
   import com.ax3.utils._2f0f6d866bfc436eafa32cc8;
   import com.ax3.utils._40a962dc7851cfcbac162791;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   import flash.utils.Dictionary;
   
   public class _c51551cee1d8db71c112ce9a
   {
      
      private static var _a25fa007f2171e3c87e33e8d:Dictionary = new Dictionary();
      
      private static var _77e7a1898d882b400195553c:Dictionary = new Dictionary();
      
      public static var content:EventDispatcher = new EventDispatcher();
      
      private static var _ea522d96c4416d278e097dd4:_3b0c83955f875982aead2f14 = new _3b0c83955f875982aead2f14();
      
      public function _c51551cee1d8db71c112ce9a()
      {
         super();
      }
      
      public static function getSwfInstance(param1:String, param2:Function) : void
      {
         var _loc3_:_40a962dc7851cfcbac162791 = null;
         var _loc4_:_40a962dc7851cfcbac162791 = _a25fa007f2171e3c87e33e8d[param1];
         if(!_loc4_)
         {
            _loc3_ = new _40a962dc7851cfcbac162791(param1);
            _loc3_.addCallback(param2);
            _02abe138014f089e8fd1242f(_loc3_);
         }
         else if(_loc4_.isLoaded())
         {
            _loc4_._5a0a93170be04e1125b48f39(param2);
         }
         else
         {
            _loc4_.addCallback(param2);
         }
      }
      
      public static function getSwfInstanceLoadingProgress(param1:String) : Number
      {
         var _loc2_:_40a962dc7851cfcbac162791 = null;
         if(_a25fa007f2171e3c87e33e8d[param1])
         {
            _loc2_ = _a25fa007f2171e3c87e33e8d[param1];
            return _loc2_._d7b84a73d45f5fb9534d77d5();
         }
         return 0x6369CF5A ^ -225172958 ^ -209219342 ^ 0x627A7D8A;
      }
      
      public static function _a1902505639170ed061db9a8(param1:String, param2:String) : Class
      {
         var _loc3_:_2f0f6d866bfc436eafa32cc8 = _77e7a1898d882b400195553c[param1];
         return _loc3_.getDefinition(param2);
      }
      
      private static function _02abe138014f089e8fd1242f(param1:_40a962dc7851cfcbac162791) : void
      {
         var _loc2_:LoaderContext = null;
         Cc.logch(_c51551cee1d8db71c112ce9a,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刑力刳剱勢刖剦劕创別劣劄则力勝勬劥刜劶劾勨勚刽劆别劖剣刢劫功剌剥勞劵劧剎刣刦劒剮动勇剭剆勣初剕剩剾劤勿劳勐刣刚刾劽劔勻刻劂劀刽刻","勠劌勜剦剫列剨勝努劣刕刴加勀剜剥") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳၜႠဠဒၤႉ့უစ","ဋၕၯါရ၈ჵდဥၥ၅ფၯႵၢၰ"));
         var _loc3_:String = param1.name;
         var _loc4_:ApplicationDomain = ApplicationDomain.currentDomain;
         var _loc5_:SecurityDomain = SecurityDomain.currentDomain;
         var _loc6_:_ed45c0bbe1b74058bed8974a = new _ed45c0bbe1b74058bed8974a(0x1B89DFC4 ^ -162009840 ^ -2122352589 ^ 0x6CA14AE4);
         param1.loader = _loc6_;
         _d836b8b1afcdd5a56b48af6b(param1);
         if(Security.sandboxType == Security.REMOTE)
         {
            _loc2_ = new LoaderContext(false,_loc4_,_loc5_);
            _loc6_.load(new URLRequest(_loc3_),_loc2_);
         }
         else
         {
            _loc2_ = new LoaderContext(false,_loc4_);
            _loc6_.load(new URLRequest(_loc3_),_loc2_);
         }
      }
      
      private static function _d836b8b1afcdd5a56b48af6b(param1:_40a962dc7851cfcbac162791) : void
      {
         _a25fa007f2171e3c87e33e8d[param1.name] = param1;
         _77e7a1898d882b400195553c[param1.name] = param1;
      }
      
      private static function onError(param1:IOErrorEvent) : void
      {
         Cc.errorch(_c51551cee1d8db71c112ce9a,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勌剧剮刂分剑剝刯劮劉剁刓劅剋勬刊勩剴动劀刲劔","刷剡剗刦勐剃勎勛動利劏劋刻剰别劐"),param1.text);
      }
      
      public static function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void
      {
         _ea522d96c4416d278e097dd4._d422dc4c68fb6bfefd7a5121(param1,param2);
      }
   }
}

