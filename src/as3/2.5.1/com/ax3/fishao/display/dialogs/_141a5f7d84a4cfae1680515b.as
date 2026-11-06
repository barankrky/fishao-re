package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _141a5f7d84a4cfae1680515b extends Sprite implements _31d36aa7605a30cd1efdb917
   {
      
      public static const TYPE_SIMPLE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶揤捈掜揧捡揖揎掅挲捉挫捐掰揢握挆揭捆掁","授挃挏挔描掠揃揻捽揌掌掬挀掱掀挣");
      
      public static const TYPE_BUBBLES:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("副劯劬剋勩劝剕剔勡刹剛刕勉勇刮刷前剳刑刯劇勢","別剺勘募剋刳剩剈剿勴到剨劷分勈劯");
      
      public static const TYPE_TIPS:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("သၔၨჍၺငჍ၇ဃႎჾၔ၅ၬဤ჈","ႾზჷჁနႀႹၜჰဃႚ႕Ⴋჷဣၸ");
      
      private var _343c9e88784883e0cd742f58:String;
      
      private var _c6c3acac0424598be8365ae3:_31d36aa7605a30cd1efdb917;
      
      private var _47f88550565f467436095804:uint = 196655;
      
      private var _89dd32b36d094559c865a219:Sprite;
      
      public function _141a5f7d84a4cfae1680515b()
      {
         super();
      }
      
      private function _5db4e448fc4dc60bb747e5e1() : void
      {
         this._89dd32b36d094559c865a219 = new Sprite();
         this._89dd32b36d094559c865a219.graphics.beginFill(this._47f88550565f467436095804);
         var _temp_2:* = this._89dd32b36d094559c865a219.graphics;
         var _temp_1:* = -1431883642 ^ 0x0E3D210F ^ -1896783875 ^ 0x2A6B4E74;
         _temp_2.drawRect(_temp_1,_temp_1,stage.stageWidth,stage.stageHeight);
         addChildAt(this._89dd32b36d094559c865a219,-1949965534 ^ -1560429499 ^ 0x3CA6A1E8 ^ 0x159EFE8F);
         stage.addEventListener(Event.RESIZE,this._831b92fd19bd3ba241278aed);
      }
      
      private function _9aa6a57fb33241174e6d5718(param1:uint) : void
      {
         this._89dd32b36d094559c865a219.graphics.beginFill(param1);
         var _temp_2:* = this._89dd32b36d094559c865a219.graphics;
         var _temp_1:* = -983600520 ^ -1468444734 ^ -139925553 ^ -1701913995;
         _temp_2.drawRect(_temp_1,_temp_1,stage.stageWidth,stage.stageHeight);
      }
      
      private function _831b92fd19bd3ba241278aed(param1:Event) : void
      {
         try
         {
            this._89dd32b36d094559c865a219.width = stage.stageWidth;
            this._89dd32b36d094559c865a219.height = stage.stageHeight;
         }
         catch(e:Error)
         {
         }
      }
      
      public function set viewType(param1:String) : void
      {
         this._343c9e88784883e0cd742f58 = param1;
         this.init();
      }
      
      public function init() : void
      {
         this.clear();
         if(this._343c9e88784883e0cd742f58 == null)
         {
            this._343c9e88784883e0cd742f58 = _141a5f7d84a4cfae1680515b.TYPE_BUBBLES;
         }
         switch(this._343c9e88784883e0cd742f58)
         {
            case _141a5f7d84a4cfae1680515b.TYPE_BUBBLES:
               §§push(0x513D2326 ^ 0x347925E6 ^ 0x2B08CEA0 ^ 0x4E4CC860);
               break;
            case _141a5f7d84a4cfae1680515b.TYPE_SIMPLE:
               §§push(-1960553541 ^ 0x4C93A7D6 ^ -1518986591 ^ 0x62C1EECD);
               break;
            case _141a5f7d84a4cfae1680515b.TYPE_TIPS:
               §§push(0x78B396AF ^ -1664695101 ^ -2092467160 ^ 0x67322E46);
               break;
            default:
               §§push(0x7AC18D1D ^ -414907351 ^ 0x767AFA5F ^ -335645848);
         }
         switch(§§pop())
         {
            case 0:
               this._c6c3acac0424598be8365ae3 = new _9c109e884a25c4cf32fe34f1();
               break;
            case 1:
               this._c6c3acac0424598be8365ae3 = new _5b4958b36a41382d7a4649fe();
               break;
            case 2:
               this._c6c3acac0424598be8365ae3 = new _55653df020120769a5d33312();
         }
         this.addChild(MovieClip(this._c6c3acac0424598be8365ae3));
         this._c303a207e4e800ce00f7bd66();
      }
      
      public function _2381b76b21d53e8dc993bc29() : void
      {
         var _loc1_:int = -1751491832 ^ -389094760 ^ -311256324 ^ -1066030929;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5BD824A6 ^ -458279238 ^ 0x24EF4FB9 ^ -909388185))
            {
               case 0:
                  this._c6c3acac0424598be8365ae3._2381b76b21d53e8dc993bc29();
                  _loc1_ = 0x4E819569 ^ -2112744455 ^ 0x6D6E7C2D ^ -206671491;
                  break;
               case 1:
                  if(this._c6c3acac0424598be8365ae3 != null)
                  {
                     _loc1_ = -1280558454 ^ 0x353F4F77 ^ 0x522552AD ^ -2031768430;
                  }
                  else
                  {
                     _loc1_ = -887433142 ^ 0x1D2FEE08 ^ 0x05DF2507 ^ -2118543227;
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
      
      public function _c303a207e4e800ce00f7bd66() : void
      {
         var _loc1_:int = -1779828909 ^ 0x72474AC2 ^ 0x2C55BD22 ^ 0x2406C83D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x15B0FA2A ^ 0x272F584B ^ -128672150 ^ 0x2536F487))
            {
               case 0:
                  return;
               case 1:
                  this._c6c3acac0424598be8365ae3._c303a207e4e800ce00f7bd66();
                  _loc1_ = 0x0E9140E1 ^ -477949098 ^ -755122026 ^ -804103251;
                  break;
               case 2:
                  if(this._c6c3acac0424598be8365ae3 != null)
                  {
                     _loc1_ = 0x5F73B150 ^ 0x1223A474 ^ 0x726590FC ^ -792179371;
                  }
                  else
                  {
                     _loc1_ = 0x1D5486F0 ^ 0x21A73B88 ^ -1267255149 ^ 0x67794D67;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set percent(param1:Number) : void
      {
         var _loc2_:int = 0x277BBE23 ^ -414399473 ^ -1999716721 ^ 0x6C7FF68F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x297CB1A0 ^ -78849142 ^ 0x78E3B8C4 ^ -1906974525))
            {
               case 0:
                  this._c6c3acac0424598be8365ae3.percent = param1;
                  _loc2_ = -1286648913 ^ 0x26976142 ^ -1302454261 ^ 0x030038C9;
                  break;
               case 1:
                  if(this._c6c3acac0424598be8365ae3 != null)
                  {
                     _loc2_ = 0x067DFE54 ^ 0x438B5C22 ^ -224487111 ^ -1813116574;
                  }
                  else
                  {
                     _loc2_ = 0x5FF4E86F ^ -8436261 ^ -364917405 ^ 0x6E3252F8;
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
      
      public function clear() : void
      {
         var _loc1_:int = -74776928 ^ 0x5E452D0C ^ -1503012503 ^ 0x799F51D6;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1311149458 ^ 0x2716CF6D ^ -502684695 ^ 0x0EFF45FB))
            {
               case 0:
                  this._c6c3acac0424598be8365ae3.destroy();
                  this.removeChildAt(0x6A0387F8 ^ 0x5C1771DE ^ 0x28BF4693 ^ 0x1EABB0B5);
                  _loc1_ = 0x70821616 ^ -548691448 ^ 0x6B4A2A66 ^ -1095056022;
                  break;
               case 1:
                  return;
               case 2:
                  _loc1_ = 0x481A3F0E ^ -1170338809 ^ -308005196 ^ 0x65B95EAF;
                  break;
               case 3:
                  if(this.numChildren <= (-800355513 ^ -122838596 ^ -410727562 ^ -815603315))
                  {
                     _loc1_ = -1355255850 ^ -1401866801 ^ -1220888014 ^ -833963205;
                  }
                  else
                  {
                     _loc1_ = 0x749B3678 ^ 0x32A6F48B ^ 0x0E0CDA9C ^ 0x3208437E;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
      }
   }
}

