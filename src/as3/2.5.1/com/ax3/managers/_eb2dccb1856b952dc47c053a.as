package com.ax3.managers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class _eb2dccb1856b952dc47c053a
   {
      
      private var _209c01f7ce0f1acb544bc26a:Dictionary = new Dictionary();
      
      private var _c39085105951ad9e50b62068:int;
      
      private var _c55e62489260ee485bbe1fc6:int;
      
      public function _eb2dccb1856b952dc47c053a(param1:int, param2:int)
      {
         super();
         this._c39085105951ad9e50b62068 = param1;
         this._c55e62489260ee485bbe1fc6 = param2;
      }
      
      public function _be1b77d80347283ab8d5769d(param1:DisplayObject, param2:Rectangle = null) : void
      {
         var _loc3_:_55043b34818a7b88d28e92ef = new _55043b34818a7b88d28e92ef();
         _loc3_.data = param1;
         if(param2 == null)
         {
            _loc3_.rect = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         }
         else
         {
            _loc3_.rect = param2;
         }
         this._eb19b3fc95e32e682dd001e2(_loc3_);
      }
      
      private function _eb19b3fc95e32e682dd001e2(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_c26a50336f338f15ca0e2a2e = null;
         var _loc3_:int = -868265713 ^ 0x590731C3 ^ -642297241 ^ 0x4C8F32AB;
         var _loc4_:int = -1853985754 ^ 0x197F19E7 ^ -967045448 ^ 0x4E5D7B79;
         var _loc5_:int = param1.rect.left / this._c39085105951ad9e50b62068;
         var _loc6_:int = param1.rect.right / this._c39085105951ad9e50b62068;
         var _loc7_:int = param1.rect.top / this._c55e62489260ee485bbe1fc6;
         var _loc8_:int = param1.rect.bottom / this._c55e62489260ee485bbe1fc6;
         if(_loc5_ != _loc6_ || _loc7_ != _loc8_)
         {
            _loc3_ = _loc5_;
            while(_loc3_ <= _loc6_)
            {
               _loc4_ = _loc7_;
               while(_loc4_ <= _loc8_)
               {
                  _loc2_ = this._28b48617da4bb719555c02d9(_loc3_,_loc4_);
                  param1.cells.push(_loc2_);
                  _loc2_.push(param1);
                  _loc4_++;
               }
               _loc3_++;
            }
         }
         else
         {
            _loc2_ = this._28b48617da4bb719555c02d9(_loc5_,_loc7_);
            param1.cells.push(_loc2_);
            _loc2_.push(param1);
         }
      }
      
      private function _28b48617da4bb719555c02d9(param1:int, param2:int) : _c26a50336f338f15ca0e2a2e
      {
         var _loc3_:int = -698028093 ^ 0x3DCD7AF1 ^ -1189899516 ^ -887673258;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x70C05247 ^ -319703039 ^ 0x0C0A7A2D ^ 0x0996B809))
            {
               case 0:
                  return this._209c01f7ce0f1acb544bc26a[param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဌုႼၡ၆ဪႶႲၤ႑","ဳဌႳႮၤႾနგყႰუეႳჽၝေ") + param2];
               case 1:
                  this._209c01f7ce0f1acb544bc26a[param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刡劍勭勂効劄劐勾制勽","剆刯劅剣劗劌劎分劾劵剱劳刍务勇功") + param2] = new _c26a50336f338f15ca0e2a2e(param1,param2);
                  _loc3_ = -254744796 ^ 0x13F3C8B5 ^ -531774929 ^ -1698445860;
                  break;
               case 2:
                  if(this._209c01f7ce0f1acb544bc26a[param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႇრႭ၎။჊ဓჟჃၱ","ၿရဉႶၾ႑ၺჃႷးႌဉყჰူ၆") + param2] == null)
                  {
                     _loc3_ = -183554264 ^ 0x2307999F ^ -1367429430 ^ -505728994;
                  }
                  else
                  {
                     _loc3_ = -1216442605 ^ 0x1EC083A0 ^ 0x37DCB11D ^ 0x07CF95CC;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _77f7db47c9a3b300aa653ea4(param1:int, param2:int) : Boolean
      {
         var _loc3_:* = undefined;
         if(String(param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹჰ၍ဋႠဘჟႸ၃တ","ოჇწၗရၚၚႌფပჟႃၢၿ႑Ⴙ") + param2) in this._209c01f7ce0f1acb544bc26a)
         {
            _loc3_ = this._209c01f7ce0f1acb544bc26a[param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勈到勥劥剔刯刪劘勻前","勔刀剝劲劕勾刊則劰别劷刽劉勨劰劺") + param2];
            return _loc3_ is _c26a50336f338f15ca0e2a2e && _c26a50336f338f15ca0e2a2e(_loc3_).objects != null && _c26a50336f338f15ca0e2a2e(_loc3_).objects.length > (0x4C25CE78 ^ 0x5EE95084 ^ -793328628 ^ -1032168720);
         }
         return false;
      }
      
      public function _56f70dcfd335648be87c5995(param1:Number, param2:Number, param3:int) : _55043b34818a7b88d28e92ef
      {
         var _loc4_:_c26a50336f338f15ca0e2a2e = null;
         var _loc5_:_55043b34818a7b88d28e92ef = null;
         var _loc6_:int = 0x7339DD83 ^ 0x3E748CAE ^ 0x5254F6AA ^ 0x1F19A787;
         var _loc7_:int = -1900653776 ^ -1045441388 ^ 0x235E76D4 ^ 0x6C47F170;
         var _loc8_:Number = 0x290F09F5 ^ 0x3B3BEDCB ^ 0x1DFAF7D5 ^ 0x0FCE13EA;
         if(param3 > (0x01BEB5E5 ^ 0x51D4E9CD ^ 0x48CA7261 ^ 0x18A02E49))
         {
            _loc8_ = param3 / (0x52E10D98 ^ -1975257666 ^ -869526863 ^ 0x148EEA95);
         }
         var _loc9_:Rectangle = new Rectangle(param1 - _loc8_,param2 - _loc8_,param3,param3);
         var _loc10_:int = (param1 - _loc8_) / this._c39085105951ad9e50b62068;
         var _loc11_:int = (param1 + _loc8_) / this._c39085105951ad9e50b62068;
         var _loc12_:int = (param2 - _loc8_) / this._c55e62489260ee485bbe1fc6;
         var _loc13_:int = (param2 + _loc8_) / this._c55e62489260ee485bbe1fc6;
         if(_loc10_ != _loc11_ || _loc12_ != _loc13_)
         {
            _loc6_ = _loc10_;
            loop0:
            while(_loc6_ <= _loc11_)
            {
               _loc7_ = _loc12_;
               loop2:
               while(true)
               {
                  if(_loc7_ > _loc13_)
                  {
                     _loc6_++;
                     continue loop0;
                  }
                  if(this._77f7db47c9a3b300aa653ea4(_loc6_,_loc7_))
                  {
                     _loc4_ = this._28b48617da4bb719555c02d9(_loc6_,_loc7_);
                     if(_loc4_.objects.length > (0x02F8226D ^ 0x2B5FA916 ^ 0x48A5B4A0 ^ 0x61023FDB))
                     {
                        for each(_loc5_ in _loc4_.objects)
                        {
                           if(_loc5_.rect.intersects(_loc9_))
                           {
                              break loop2;
                           }
                        }
                     }
                  }
                  _loc7_++;
               }
               return _loc5_;
            }
         }
         else if(this._77f7db47c9a3b300aa653ea4(_loc10_,_loc12_))
         {
            _loc4_ = this._28b48617da4bb719555c02d9(_loc10_,_loc12_);
            if(_loc4_.objects.length > (0x1EB5741C ^ 0x7DA529FC ^ 0x7A633C4B ^ 0x197361AB))
            {
               for each(_loc5_ in _loc4_.objects)
               {
                  if(_loc5_.rect.intersects(_loc9_))
                  {
                     return _loc5_;
                  }
               }
            }
         }
         return null;
      }
      
      public function _612e5b50a32957241aa1a510(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_c26a50336f338f15ca0e2a2e = null;
         for each(_loc2_ in param1.cells)
         {
            _loc2_.remove(param1);
         }
      }
      
      public function getAll() : Vector.<_55043b34818a7b88d28e92ef>
      {
         var _loc1_:_c26a50336f338f15ca0e2a2e = null;
         var _loc2_:_55043b34818a7b88d28e92ef = null;
         var _loc3_:Vector.<_55043b34818a7b88d28e92ef> = new Vector.<_55043b34818a7b88d28e92ef>();
         for each(_loc1_ in this._209c01f7ce0f1acb544bc26a)
         {
            for each(_loc2_ in _loc1_.objects)
            {
               if(_loc3_.indexOf(_loc2_) == (0x2C11FEA8 ^ 0x78287EDA ^ 0x49E4963A ^ -501028425))
               {
                  _loc3_.push(_loc2_);
               }
            }
         }
         return _loc3_;
      }
      
      public function destroy() : void
      {
         var _loc1_:_c26a50336f338f15ca0e2a2e = null;
         var _loc2_:_55043b34818a7b88d28e92ef = null;
         for each(_loc1_ in this._209c01f7ce0f1acb544bc26a)
         {
            for each(_loc2_ in _loc1_.objects)
            {
               _loc2_.destroy();
            }
            _loc1_.objects = null;
         }
         this._209c01f7ce0f1acb544bc26a = null;
      }
   }
}

