package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._b8cf18222865bdcc29af1c94;
   import com.ax3.net._ed45c0bbe1b74058bed8974a;
   import com.ax3.net._f5d3c19b4de5df055d1bc952;
   import com.ax3.utils.log.globalLogger;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class _40a962dc7851cfcbac162791 extends _2f0f6d866bfc436eafa32cc8
   {
      
      public function _40a962dc7851cfcbac162791(param1:String, param2:Loader = null)
      {
         super(param1,param2);
      }
      
      override protected function _afd3943189d33d1c8f97518b(param1:Event) : void
      {
         var _loc2_:int = 0x2C1F4B72 ^ 0x02F68C63 ^ 0x7FE4F1B5 ^ -1641382262;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-264034780 ^ -1158298875 ^ -667141709 ^ 0x5DAD94BC))
            {
               case 0:
                  globalLogger.logch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揎掻捶掏挅揟挜掙捺捱挑掟捨揫揸捼","捠捦挆捠捴揃持揚挹揻揅揌挵挙握捂"),this.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘勰勯剫劶删勝剌劝剝剩剔勿勯剸剘剩勾勡剼剴勗劳勍励刜勋勽剷劉劒刱刱剒劝剒","劶刴务刭劐勣刄勌勯剶勯劓刭势剌劖"));
                  loaded = true;
                  if(_callbacks)
                  {
                     _loc2_ = -33955864 ^ -977361139 ^ -26202489 ^ 0x09101E4D;
                  }
                  else
                  {
                     _loc2_ = 0x67C79022 ^ -544060896 ^ 0x1FFA8771 ^ 0x6888155F;
                  }
                  break;
               case 1:
                  this._a54f7898880d608c7e1dc342();
                  _loc2_ = 0x0293F120 ^ -762465798 ^ -749364485 ^ -865299955;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _a54f7898880d608c7e1dc342() : void
      {
         if(!isLoaded())
         {
            throw new Error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၌Ⴍၷဈၣလთဗၹხ჊ၲႀၚ့Ⴗၭႂ႕ၝဠၵီჭၗႧ။့ოနဒ჎ჼႫလႂၻၽჁဖႋ႔ႈႯ","ဟၜႇ္ၥჳႾႤႪကျႪဢაႥႛ"));
         }
         var _loc1_:ApplicationDomain = ApplicationDomain.currentDomain;
         var _loc2_:LoaderContext = new LoaderContext(false,_loc1_);
         _loc2_.allowCodeImport = true;
         var _loc3_:_ed45c0bbe1b74058bed8974a = new _ed45c0bbe1b74058bed8974a(-1447514097 ^ 0x52DEC30A ^ 0x6F7793EE ^ -1810767640);
         _loc3_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         _loc3_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc3_.contentLoaderInfo.addEventListener(Event.COMPLETE,this._943495ffc156aaf701c126c8);
         _loc3_.loadBytes(loader.contentLoaderInfo.bytes,_loc2_);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         globalLogger.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剿勜劥刮劷刉劌勝勥勇劕劎劣勗勘勒力劐勇勢勑勺劤勯剂刨助刯剞划劀剦劙剌勋剸募刍","勞剉努刅則則勷劔划券勩劀勏勃劓剑"),param1.text);
         this.onError(param1.currentTarget as _ed45c0bbe1b74058bed8974a);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         globalLogger.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刣刬劦勃刚势劮剗刽剝勺刌剏勳勖劚别剖勹動勄勛剿劇募劫","劥剌刖勶剬劕勝劙刨劈勅勦刞刁勏勐"),param1.text);
         this.onError(param1.currentTarget as Loader);
      }
      
      private function onError(param1:Loader) : void
      {
         globalLogger.dispatchEvent(new _b8cf18222865bdcc29af1c94(_b8cf18222865bdcc29af1c94.ASSET_LOAD_ERROR));
         this._4f2a7ba41ce2806d1a3631fb(param1);
      }
      
      private function _943495ffc156aaf701c126c8(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         this._4f2a7ba41ce2806d1a3631fb(_loc2_ as Loader);
         _callbacks._21b2a6c68fe394cdfa1577b4(_loc2_.content as MovieClip);
         if(_callbacks.length > (0x66522FD5 ^ -1152287588 ^ 0x13E19A98 ^ -823997999))
         {
            this._a54f7898880d608c7e1dc342();
         }
      }
      
      private function _4f2a7ba41ce2806d1a3631fb(param1:Loader) : void
      {
         var _loc2_:int = -292888440 ^ -367202785 ^ -145930418 ^ 0x506BC55B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7C7F9DB7 ^ -1902885374 ^ -1499752977 ^ -138362150))
            {
               case 0:
                  param1.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
                  param1.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
                  param1.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._943495ffc156aaf701c126c8);
                  _loc2_ = 0x29B95A1F ^ -444563061 ^ 0x58E91958 ^ 0x37604E4D;
                  break;
               case 1:
                  return;
               case 2:
                  if(param1 != null)
                  {
                     _loc2_ = 0x76BF9116 ^ -1142449386 ^ 0x1D8F4B3C ^ 0x7367CDBC;
                  }
                  else
                  {
                     _loc2_ = 0x65F3DB45 ^ 0x21BA6DE2 ^ 0x37E2017F ^ -803521703;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _5a0a93170be04e1125b48f39(param1:Function) : void
      {
         _callbacks.add(param1);
         this._a54f7898880d608c7e1dc342();
      }
      
      public function _d7b84a73d45f5fb9534d77d5() : Number
      {
         var _loc1_:Loader = this.loader;
         if(_loaded)
         {
            return 0x1A7F3BEA ^ 0x0AE48BDE ^ -1193491208 ^ -1471712051;
         }
         if(_loc1_ is _f5d3c19b4de5df055d1bc952)
         {
            if(_loc1_ != null && _f5d3c19b4de5df055d1bc952(_loc1_).bytesTotal > (0x751D9B32 ^ -1265268171 ^ -1452061325 ^ 0x68FB5C74))
            {
               return _f5d3c19b4de5df055d1bc952(_loc1_).bytesLoaded / _f5d3c19b4de5df055d1bc952(_loc1_).bytesTotal;
            }
            return 0x5F7E5778 ^ -251796916 ^ 0x6D4E2194 ^ -1026714464;
         }
         if(_loc1_ != null && _loc1_.contentLoaderInfo.bytesTotal > (0x5CCB95A4 ^ 0x7C1CBBF5 ^ 0x524956F8 ^ 0x729E78A9))
         {
            return _loc1_.contentLoaderInfo.bytesLoaded / _loc1_.contentLoaderInfo.bytesTotal;
         }
         return 0xB75B04 ^ -2137405910 ^ -1920441603 ^ 0x0DA6FFD3;
      }
   }
}

