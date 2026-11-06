package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.display.disableMouse;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   
   public class _d06e8ada26b7326913cdb9c9 extends Sprite
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _2f414ede45372fff480fcb7a:DisplayObject;
      
      private var _780ecdb247fea5c18ba1d157:DisplayObject;
      
      private var _63f63ba5d126dea96521f832:DisplayObject;
      
      public function _d06e8ada26b7326913cdb9c9(param1:DisplayObject)
      {
         super();
         this._asset = DisplayObjectContainer(param1);
         this._2f414ede45372fff480fcb7a = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒剌勗労刬别剦勤勲勚勧剬办勼","剎劖剖刢勝剌劕勒勍劲劉剙剛剑勖劘"));
         this._780ecdb247fea5c18ba1d157 = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႠငၰჹၱჄၐု჻Ⴇၨၥာဨ","ႬႬါၖိ၉ႏႿကႉႶၽႧဍღလ"));
         this._63f63ba5d126dea96521f832 = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捳挡捍授掷挎掍捽接挢揥挻捵捲挠捑挚揑揳损","接揍挝挦揣揲掫掤挥捕捶掙捼插挪掟"));
         this.init();
      }
      
      public function get top() : DisplayObject
      {
         return this._2f414ede45372fff480fcb7a;
      }
      
      public function get shadow() : DisplayObject
      {
         return this._63f63ba5d126dea96521f832;
      }
      
      public function get iso() : DisplayObject
      {
         return this._780ecdb247fea5c18ba1d157;
      }
      
      override public function set filters(param1:Array) : void
      {
         var _loc2_:int = 0x13815D4E ^ 0x5165C493 ^ -638628941 ^ 0x5387402D;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x35B40EE3 ^ -1467574403 ^ -1779931744 ^ -1068077444))
            {
               case 0:
                  return;
               case 1:
                  this._asset.filters = param1;
                  if(this._2f414ede45372fff480fcb7a != null)
                  {
                     _loc2_ = 0x3918AE33 ^ -1650622261 ^ -1002272763 ^ -1471466309;
                  }
                  else
                  {
                     _loc2_ = -108850240 ^ 0x104F4A9A ^ 0x536FBCBF ^ 0x722F77A4;
                  }
                  break;
               case 2:
                  this._780ecdb247fea5c18ba1d157.filters = param1;
                  _loc2_ = 0x6163D1B3 ^ 0x7D66BDEC ^ 0x432E2F50 ^ -1750609587;
                  break;
               case 3:
                  if(this._780ecdb247fea5c18ba1d157 != null)
                  {
                     _loc2_ = 0x5F4EFD38 ^ -659793614 ^ 0x0FB46AB0 ^ 0x40DA5CFA;
                  }
                  else
                  {
                     _loc2_ = -869226653 ^ -1306612102 ^ -1860200187 ^ 0x27BD025E;
                  }
                  break;
               case 4:
                  this._2f414ede45372fff480fcb7a.filters = param1;
                  _loc2_ = -1142959100 ^ -596386178 ^ -2035112486 ^ 0x29923DE1;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         var _loc1_:int = -779705306 ^ -821126200 ^ -799758720 ^ 0x55EBC551;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x438F2734 ^ 0x772AC507 ^ 0x02BB91BF ^ -1389809739))
            {
               case 0:
                  disableMouse(this._2f414ede45372fff480fcb7a);
                  this._2f414ede45372fff480fcb7a.cacheAsBitmap = true;
                  _loc1_ = -180837739 ^ -580562293 ^ 0x10DB2632 ^ -1548645870;
                  break;
               case 1:
                  if(this._780ecdb247fea5c18ba1d157 is InteractiveObject)
                  {
                     _loc1_ = 0x0FBD1125 ^ 0x25B7BBD6 ^ -449243995 ^ 0x5404E26D;
                  }
                  else
                  {
                     _loc1_ = 0x4A135E4E ^ 0x1A7F232D ^ -2126297969 ^ 0x4A1865D6;
                  }
                  break;
               case 2:
                  (this._780ecdb247fea5c18ba1d157 as InteractiveObject).mouseEnabled = false;
                  _loc1_ = -1295082574 ^ 0x29E5A31F ^ -829517902 ^ -829232347;
                  break;
               case 3:
                  if(this._2f414ede45372fff480fcb7a != null)
                  {
                     _loc1_ = -1036773467 ^ -1782652888 ^ -250228202 ^ 0x3DA879A2;
                  }
                  else
                  {
                     _loc1_ = 0x21A78313 ^ 0x74F2EFB7 ^ -1289428395 ^ 0x7D46D2CF;
                  }
                  break;
               case 4:
                  return;
               case 5:
                  disableMouse(this._63f63ba5d126dea96521f832);
                  this._63f63ba5d126dea96521f832.cacheAsBitmap = true;
                  _loc1_ = 0x1127799D ^ 0x0EA0990C ^ 0x640AF5E6 ^ -524662454;
                  break;
               case 6:
                  if(this._780ecdb247fea5c18ba1d157 != null)
                  {
                     _loc1_ = -910210432 ^ 0x2DE964B1 ^ 0x6F4700F1 ^ 0x102672F8;
                  }
                  else
                  {
                     _loc1_ = -1128102386 ^ 0x67037D41 ^ 0x5423A6C3 ^ 0x14D501B6;
                  }
                  break;
               case 7:
                  if(this._63f63ba5d126dea96521f832 != null)
                  {
                     _loc1_ = 0x2B8C6BAB ^ 0x32CBCE41 ^ -29523218 ^ 0x7C4D7B38;
                  }
                  else
                  {
                     _loc1_ = 0x33D54025 ^ 0x4DB6A31E ^ 0x07CB55E7 ^ -492836127;
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

