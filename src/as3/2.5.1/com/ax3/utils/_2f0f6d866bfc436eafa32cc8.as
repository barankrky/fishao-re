package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.net._8546382b9573012b659f03ff;
   import com.ax3.utils.log.globalLogger;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   
   public class _2f0f6d866bfc436eafa32cc8 extends _8546382b9573012b659f03ff
   {
      
      protected var _callbacks:_ef35fdb2eeeac7eafff8d8f5 = new _ef35fdb2eeeac7eafff8d8f5();
      
      public function _2f0f6d866bfc436eafa32cc8(param1:String, param2:Loader = null)
      {
         super(param1);
         this.loader = param2;
      }
      
      public function hasDefinition(param1:String) : Boolean
      {
         return isLoaded() && this.loader.contentLoaderInfo.applicationDomain.hasDefinition(param1);
      }
      
      public function getDefinition(param1:String) : Class
      {
         var _loc2_:ApplicationDomain = this.loader.content.loaderInfo.applicationDomain;
         if(_loc2_.hasDefinition(param1))
         {
            return _loc2_.getDefinition(param1) as Class;
         }
         globalLogger.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬劏勂勾劤勗劝勩勨勰副剕劘力剟劂剷労利劰勷劏勾勯勘剰劼勔刲劅剒剝劼劋剠勂劚刞刔刜勭劗势労励勶勏刅勶勪剝剮勧削勱勮刖剋勿剑劆勓刺劉勯勮勽劵剻刱劸刃剷刣剤分刨勬剟勦刢勮判剏剠刭刈剄剮剕勞勶","刺劽剿勫刹剽劊刲勆削労切剠刁勻刲") + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱揿掁掗揼捍揓揎挟捫","挴揌掖挩掍揰捷揜揀提掶揥挋推採掇"));
         return null;
      }
      
      public function get loader() : Loader
      {
         return Loader(_item);
      }
      
      protected function _afd3943189d33d1c8f97518b(param1:Event) : void
      {
         var _loc2_:int = 0x19BA5F7C ^ -681607038 ^ -970194275 ^ -186657763;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1178282480 ^ 0x5D4E910A ^ -868274312 ^ -727490275))
            {
               case 0:
                  this._callbacks._b04233d246f7aaf0deec034f();
                  this._callbacks = null;
                  _loc2_ = -2125247404 ^ 0x5D9E458A ^ -359006403 ^ -901578850;
                  break;
               case 1:
                  loaded = true;
                  if(this._callbacks)
                  {
                     _loc2_ = 0x2B1452C5 ^ -531412322 ^ 0x7D76A86E ^ 0x4A27B94A;
                  }
                  else
                  {
                     _loc2_ = 0x3D13B579 ^ 0x35316FCD ^ -1732927376 ^ 0x6C8173B9;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function addCallback(param1:Function, ... rest) : void
      {
         this._790a91a006ea444c9d036977(param1,rest);
      }
      
      public function _790a91a006ea444c9d036977(param1:Function, param2:Array) : void
      {
         var _loc3_:int = -335733064 ^ -1135965725 ^ 0x402CC836 ^ -1920405937;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-225462259 ^ 0x6C5CE6F4 ^ -1919643389 ^ -1990951206))
            {
               case 0:
                  return;
               case 1:
                  param1.apply(this,param2);
                  _loc3_ = 0x089F1C51 ^ 0x7459B126 ^ 0x2E18C12A ^ -926032515;
                  break;
               case 2:
                  if(isLoaded())
                  {
                     _loc3_ = -1934757940 ^ -1611562341 ^ 0x24C184CB ^ -1383180099;
                  }
                  else
                  {
                     _loc3_ = 0x3027635C ^ 0x2E7881D9 ^ -2088424450 ^ 0x07C97858;
                  }
                  break;
               case 3:
                  this._callbacks._0c63049141745456ec659cf5(param1,param2);
                  _loc3_ = -1409046509 ^ 0x358EF881 ^ -2053769277 ^ -2046093711;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set loader(param1:Loader) : void
      {
         var _loc2_:int = -2119879558 ^ 0x4FAEA108 ^ 0x290FC37E ^ -556817139;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1471331521 ^ -283694661 ^ -679527315 ^ -1443977751))
            {
               case 0:
                  throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勻勈剟剆剤剄剽刋劀划勣勷剶劗刕劻剻剺初劰刎劗劇务勱劷剂刜刈劣勤勱勏勫劍務勞剆勂劑劋副删利剻剡剰剁剀劣别劂刖勒励勣","剄剕勊劧勃劷劳勤刑劌劒剽刬剡劤劥"));
               case 1:
                  if(_item != null)
                  {
                     _loc2_ = 0x6F3FA4DD ^ -367368556 ^ 0x45E7CE91 ^ -116785192;
                  }
                  else
                  {
                     _loc2_ = 0x06D030CF ^ -168303889 ^ -2093010005 ^ 0x49D3128F;
                  }
                  break;
               case 2:
                  _item = param1;
                  this.loader.contentLoaderInfo.addEventListener(Event.INIT,this._afd3943189d33d1c8f97518b,false,0x132C05E7 ^ 0x680AB5CC ^ -823473109 ^ -1244890112,true);
                  _loc2_ = -1226709812 ^ 0x0F7792C0 ^ 0x1A27F6DE ^ -1703250991;
                  break;
               case 3:
                  return;
               case 4:
                  if(param1 != null)
                  {
                     _loc2_ = 0x2A73DED9 ^ -2091026967 ^ -1250194879 ^ 0x259ED273;
                  }
                  else
                  {
                     _loc2_ = 0x2282A959 ^ 0x5D987913 ^ 0x1FDC6E79 ^ 0x590D4D30;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

