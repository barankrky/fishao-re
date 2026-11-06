package com.ax3.fishao.locations.objects.boat
{
   import com.ax3.fishao.locations.objects._9764d11560b9366107f04187;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class _871de1382931812cb1e248eb extends Bitmap implements _69eec7d2f73604da25ccda04
   {
      
      private var _79c703b2918386e46dbda52d:int = 0;
      
      private var _a245890cc629a3e69a71eccf:int = 0;
      
      private var _9ed01131d287ae5b408ec907:_9764d11560b9366107f04187;
      
      private var _50cd3ed69489d31dc3565517:_2efea606ad9242a2a6a00bb1;
      
      public var shiftX:int = 0;
      
      public var shiftY:int = 0;
      
      private var _e4c8707cb8d0589074f9f604:int = 0;
      
      private var _089c3ed8db3a0bcccb88ffcb:_d8a6f04331e45b3fc4efa7e8;
      
      private var _bb6381b3653237402fbc4ac7:int = 0;
      
      private var _daa80fcbddcf16be00fc552d:int;
      
      private var _1709b9adf431ac75f0178763:Boolean = true;
      
      private var _101993386f6b5276880b1be4:int = 1;
      
      private var _cd6448c2efbf001e665dfb73:Number = 100;
      
      private var _aadd31a3da5948e30aaa67f0:_a5c3dbdfbeb709a5bf92d27c = new _a5c3dbdfbeb709a5bf92d27c();
      
      public var directionCoefX:Number = 1;
      
      public var directionCoefY:Number = 1;
      
      public var isRightAngle:Boolean = false;
      
      public function _871de1382931812cb1e248eb(param1:_9764d11560b9366107f04187)
      {
         super();
         this._9ed01131d287ae5b408ec907 = param1;
         this._531ebcbab8efb830a495e659(_d8a6f04331e45b3fc4efa7e8.DEFAULT,-866008005 ^ -199966752 ^ 0x49D18E31 ^ 0x71A4F5EA);
         addEventListener(Event.ADDED_TO_STAGE,this._36be77297c1a73224443dabe);
         addEventListener(Event.REMOVED_FROM_STAGE,this._182eee92c144d2858df84fb9);
      }
      
      private function _36be77297c1a73224443dabe(param1:Event) : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
      }
      
      private function _182eee92c144d2858df84fb9(param1:Event) : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
      }
      
      public function _9eb7d763103333597ca3343d(param1:_d8a6f04331e45b3fc4efa7e8) : void
      {
         var _loc2_:int = 0x23215949 ^ 0x10E6AF80 ^ 0x759A0F52 ^ -1920351381;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1696005581 ^ 0x74939D1C ^ 0x6A35F9D7 ^ 0x4F9B5C08))
            {
               case 0:
                  if(this._089c3ed8db3a0bcccb88ffcb != param1)
                  {
                     _loc2_ = 0x1DBE6C35 ^ 0x649D553E ^ 0x7A52013A ^ -928709952;
                  }
                  else
                  {
                     _loc2_ = -1032198245 ^ -1137559683 ^ 0x2F6F3B4D ^ -1695493799;
                  }
                  break;
               case 1:
                  this._531ebcbab8efb830a495e659(param1,this._e4c8707cb8d0589074f9f604);
                  _loc2_ = 0x4C9196D4 ^ 0x7B5DD886 ^ 0x0874035E ^ -194217986;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _dbe260738262fd87870d9a73(param1:int) : void
      {
         var _loc2_:int = 0x0DA77272 ^ -2004412455 ^ -168537207 ^ 0x3654897C;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1626357709 ^ -614157579 ^ 0x669AA1E3 ^ 0x64716C79))
            {
               case 0:
                  return;
               case 1:
                  this._531ebcbab8efb830a495e659(this._089c3ed8db3a0bcccb88ffcb,param1);
                  _loc2_ = -1354982773 ^ 0x1D74D19E ^ -1797102817 ^ 0x602A9756;
                  break;
               case 2:
                  if(this._e4c8707cb8d0589074f9f604 != param1)
                  {
                     _loc2_ = 0x13CC9270 ^ -407533700 ^ 0x331B7EA3 ^ -2115840782;
                  }
                  else
                  {
                     _loc2_ = 0x557DE2DD ^ -115949243 ^ 0x4B1B8699 ^ -1578100131;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _531ebcbab8efb830a495e659(param1:_d8a6f04331e45b3fc4efa7e8, param2:int) : void
      {
         this._089c3ed8db3a0bcccb88ffcb = param1;
         this._e4c8707cb8d0589074f9f604 = param2;
         this._aadd31a3da5948e30aaa67f0.rotation = this._e4c8707cb8d0589074f9f604;
         this._bb6381b3653237402fbc4ac7 = -133321189 ^ -393286884 ^ 0x0440E63E ^ 0x14C3A339;
         this._50cd3ed69489d31dc3565517 = this._9ed01131d287ae5b408ec907._80bc6128e22b2af3cd18ec0b(param1,param2);
         bitmapData = this._50cd3ed69489d31dc3565517._ce05763c87d0417ec498c3d2(this._bb6381b3653237402fbc4ac7);
         this._daa80fcbddcf16be00fc552d = this._50cd3ed69489d31dc3565517.totalFrames;
         this.shiftX = this._50cd3ed69489d31dc3565517.shiftX;
         this.shiftY = this._50cd3ed69489d31dc3565517.shiftY;
         var _temp_3:* = this;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x137FE903 ^ -401683722 ^ -1215689191 ^ 0x4CFB2DEC;
         var _loc3_:Point = _temp_3.transformPoint(new Point(_temp_1,_temp_1));
         var _temp_6:* = this;
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = 0x684E96F5 ^ -392088262 ^ 0x66018B62 ^ -420599636;
         var _loc4_:Point = _temp_6.transformPoint(new Point(_temp_4,_temp_4));
         this.directionCoefX = Math.abs(int((_loc4_.x - _loc3_.x) * (-1464859481 ^ 0x322ABBD5 ^ -1273903140 ^ 0x2E8B78CA)) / (0x264D61DD ^ -1091014497 ^ -1669310409 ^ 0x04354911));
         this.directionCoefY = Math.abs(int((_loc4_.y - _loc3_.y) * (0x0F4EDE17 ^ 0x2CE7624B ^ 0x24EA88E7 ^ 0x074334DF)) / (-1917749737 ^ -771212972 ^ 0x67D93D02 ^ 0x38607225));
         this.isRightAngle = param2 % (0x5CD058B5 ^ 0x40CEADD3 ^ -964971 ^ -470830089) == (0x41B63FB1 ^ 0x0E90BE9A ^ -324243181 ^ -1551175624);
         this._3ab0449fa51aed8922bfaa48();
      }
      
      private function _3ab0449fa51aed8922bfaa48() : void
      {
         super.x = this._79c703b2918386e46dbda52d + this.shiftX;
         super.y = this._a245890cc629a3e69a71eccf + this.shiftY;
      }
      
      public function _985f48f37c102603628fed8f(param1:Point) : Point
      {
         var _loc2_:Point = this._50cd3ed69489d31dc3565517.transformPoint(param1);
         _loc2_.x += this.shiftX;
         _loc2_.y += this.shiftY;
         return _loc2_;
      }
      
      public function transformPoint(param1:Point) : Point
      {
         return this._50cd3ed69489d31dc3565517.transformPoint(param1);
      }
      
      public function _267630a818c67641d048fa59(param1:Point) : Point
      {
         param1.x -= this.shiftX;
         param1.y -= this.shiftY;
         return this._50cd3ed69489d31dc3565517._267630a818c67641d048fa59(param1);
      }
      
      public function _4217c5d9593f8db7cbf2f890(param1:Point) : Point
      {
         param1 = this._50cd3ed69489d31dc3565517.transformPoint(param1);
         param1.x -= this._50cd3ed69489d31dc3565517._e90c9e6e811aaf2a48929322().tx;
         param1.y -= this._50cd3ed69489d31dc3565517._e90c9e6e811aaf2a48929322().ty;
         return param1;
      }
      
      public function _4cc2f4f14a4a0f3b86eab22b(param1:Point) : Point
      {
         param1 = this._50cd3ed69489d31dc3565517._267630a818c67641d048fa59(param1);
         param1.x -= this._50cd3ed69489d31dc3565517._83e2d7f6ff263228b6a98397().tx;
         param1.y -= this._50cd3ed69489d31dc3565517._83e2d7f6ff263228b6a98397().ty;
         return param1;
      }
      
      public function _f2950c064a35bcad93de7a75() : Matrix
      {
         var _loc1_:_2efea606ad9242a2a6a00bb1 = this._9ed01131d287ae5b408ec907._80bc6128e22b2af3cd18ec0b(_d8a6f04331e45b3fc4efa7e8.SAIL,-1291818160 ^ -1111131514 ^ -4148368 ^ -251288922);
         return _loc1_._e90c9e6e811aaf2a48929322();
      }
      
      override public function set x(param1:Number) : void
      {
         this._79c703b2918386e46dbda52d = param1;
         this.position.x = param1;
         super.x = this._79c703b2918386e46dbda52d + this.shiftX;
      }
      
      override public function set y(param1:Number) : void
      {
         this._a245890cc629a3e69a71eccf = param1;
         this.position.y = param1;
         super.y = this._a245890cc629a3e69a71eccf + this.shiftY;
      }
      
      override public function get x() : Number
      {
         return this._79c703b2918386e46dbda52d;
      }
      
      override public function get y() : Number
      {
         return this._a245890cc629a3e69a71eccf;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0x5DD3C7FE ^ -2036211764 ^ 0x3D7D0A89 ^ -435219781;
         if(this._1709b9adf431ac75f0178763)
         {
            if(this._101993386f6b5276880b1be4 == (0x03577B41 ^ 0x1F367991 ^ -444951953 ^ 0x06E46F40))
            {
               this._101993386f6b5276880b1be4 = param1;
               this._baf313982c2d1288b0ea1b8e(-1950507344 ^ -885984679 ^ -875071027 ^ -1957030619);
            }
            else
            {
               _loc3_ = param1 - this._101993386f6b5276880b1be4;
               if(_loc3_ > this._cd6448c2efbf001e665dfb73)
               {
                  _loc4_ = int(_loc3_ / this._cd6448c2efbf001e665dfb73);
                  this._101993386f6b5276880b1be4 += this._cd6448c2efbf001e665dfb73 * _loc4_;
                  this._e82aa6cfb32a0abd80477b39(_loc4_);
               }
            }
         }
      }
      
      private function _e82aa6cfb32a0abd80477b39(param1:int) : void
      {
         this._baf313982c2d1288b0ea1b8e((this._bb6381b3653237402fbc4ac7 + param1) % this._daa80fcbddcf16be00fc552d + (-2115063104 ^ 0x4409F1F5 ^ 0x502326DC ^ -1782290968));
      }
      
      private function _baf313982c2d1288b0ea1b8e(param1:int) : void
      {
         var _loc2_:int = 0x1DD543F2 ^ 0x101BE160 ^ 0x34289E30 ^ -375486510;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1154432216 ^ 0x5DA7286E ^ -1647502637 ^ -1423815961))
            {
               case 0:
                  this._bb6381b3653237402fbc4ac7 = param1 - 1;
                  bitmapData = this._50cd3ed69489d31dc3565517._ce05763c87d0417ec498c3d2(this._bb6381b3653237402fbc4ac7);
                  _loc2_ = 0x70F0F3C3 ^ 0x58816998 ^ -1556329547 ^ 0x5B356A9D;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._bb6381b3653237402fbc4ac7 + (-1433585856 ^ -68070576 ^ 0x0F8C8A17 ^ 0x5EF0EE06) != param1)
                  {
                     _loc2_ = 0x65DD8928 ^ -1396942601 ^ -655048939 ^ -1041377864;
                  }
                  else
                  {
                     _loc2_ = -374909665 ^ 0x171481D3 ^ 0x663BAE59 ^ 0x48F0C1E6;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get position() : _a5c3dbdfbeb709a5bf92d27c
      {
         return this._aadd31a3da5948e30aaa67f0;
      }
      
      public function _b007a8f45848923a4a7c0631(param1:int) : BitmapData
      {
         return this._9ed01131d287ae5b408ec907._80bc6128e22b2af3cd18ec0b(_d8a6f04331e45b3fc4efa7e8.DEFAULT,param1)._ce05763c87d0417ec498c3d2(-1570283874 ^ -2052183369 ^ -362505310 ^ -844238965);
      }
      
      public function get directionIndex() : int
      {
         return this._e4c8707cb8d0589074f9f604;
      }
      
      public function get boatStatusType() : _d8a6f04331e45b3fc4efa7e8
      {
         return this._089c3ed8db3a0bcccb88ffcb;
      }
      
      public function destroy() : void
      {
         this._9ed01131d287ae5b408ec907 = null;
         this._50cd3ed69489d31dc3565517 = null;
         this._089c3ed8db3a0bcccb88ffcb = null;
         this._aadd31a3da5948e30aaa67f0 = null;
         bitmapData = null;
      }
   }
}

