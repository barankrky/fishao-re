package com.ax3.fishao.locations.objects
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import flash.display.DisplayObjectContainer;
   
   public class _2d433bd00cdcd86a8edd654f
   {
      
      private var _092e8905d6696e07abc3442c:DisplayObjectContainer;
      
      private var _1ef799f64a8738dc02fa96f4:_eb2314ffc37429732989b460;
      
      public function _2d433bd00cdcd86a8edd654f(param1:DisplayObjectContainer)
      {
         super();
         this._092e8905d6696e07abc3442c = param1;
         this.init();
      }
      
      public function set tooltipText(param1:String) : void
      {
         this._1ef799f64a8738dc02fa96f4.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿捼捩揕挔挘掽捤挊揿掽揉挴揚掔挮","揙揔掑挄揇掋揆捥揎揆掂挜捳挮挘掹")):param1};
      }
      
      public function get source() : DisplayObjectContainer
      {
         return this._092e8905d6696e07abc3442c;
      }
      
      private function init() : void
      {
         this._1ef799f64a8738dc02fa96f4 = new _eb2314ffc37429732989b460();
         this._1ef799f64a8738dc02fa96f4.x = 0x4E0507F9 ^ 0x400A5E79 ^ 0x0DB3AEC9 ^ 0x03BCF749;
         this._1ef799f64a8738dc02fa96f4.y = 0x57419952 ^ -813525145 ^ -1095380289 ^ 0x2676DC8A;
         this._1ef799f64a8738dc02fa96f4.graphics.beginFill(0x79C7B4A8 ^ -1155032831 ^ 0x7368C51E ^ -1323792345,0x1C29A6A2 ^ 0x2ABC3AEB ^ -1282677338 ^ -2061600273);
         this._1ef799f64a8738dc02fa96f4.graphics.drawRect(0x786300C0 ^ -599676148 ^ -536825343 ^ -1143085521,0x54089F26 ^ -1896621881 ^ -251398044 ^ -737722293,this._092e8905d6696e07abc3442c.width + (0x03142977 ^ 0x7D1008D0 ^ 0x35A110D5 ^ 0x4BA53177),this._092e8905d6696e07abc3442c.height);
         this._1ef799f64a8738dc02fa96f4.graphics.endFill();
         this._092e8905d6696e07abc3442c.addChild(this._1ef799f64a8738dc02fa96f4);
         this._092e8905d6696e07abc3442c.mouseChildren = true;
         this._092e8905d6696e07abc3442c.mouseEnabled = true;
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:int = -517133056 ^ 0x503D9753 ^ 0x22C1A226 ^ 0x68E7CA5D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2011530803 ^ 0x0A951E8A ^ 0x17B788BE ^ 0x6E0E3DD0))
            {
               case 0:
                  this._1ef799f64a8738dc02fa96f4 = null;
                  return;
               case 1:
                  if(this._1ef799f64a8738dc02fa96f4.parent != null)
                  {
                     _loc1_ = -2102026868 ^ 0x3843EC06 ^ 0x624256FF ^ 0x2382F55E;
                  }
                  else
                  {
                     _loc1_ = 0x3CA7C254 ^ -565111367 ^ -447845459 ^ -57774487;
                  }
                  break;
               case 2:
                  this._1ef799f64a8738dc02fa96f4.parent.removeChild(this._1ef799f64a8738dc02fa96f4);
                  _loc1_ = -470863438 ^ 0x2FEBB91E ^ 0x5B292627 ^ 0x6C1B7CA2;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

