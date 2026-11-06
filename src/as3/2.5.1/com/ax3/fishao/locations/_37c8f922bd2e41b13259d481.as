package com.ax3.fishao.locations
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.utils.drawing.drawLine;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _37c8f922bd2e41b13259d481
   {
      
      private var _7d81293153509cd2e1f21e74:DisplayObjectContainer;
      
      private var _fd0245d263dc1a00ee8550ff:_bcd386fcd22a5b84a8880e74;
      
      public function _37c8f922bd2e41b13259d481(param1:DisplayObjectContainer)
      {
         super();
         this._7d81293153509cd2e1f21e74 = param1;
         this._fd0245d263dc1a00ee8550ff = new _bcd386fcd22a5b84a8880e74();
      }
      
      public function getAll() : Vector.<DisplayObject>
      {
         return this._fd0245d263dc1a00ee8550ff.getAll();
      }
      
      public function _d5112cf4084aaf4e0aa50d63(param1:DisplayObject) : Boolean
      {
         return param1.parent != null && param1.parent == this._7d81293153509cd2e1f21e74;
      }
      
      public function _e212a4ed5e2246a1788a7970(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = this._fd0245d263dc1a00ee8550ff.add(param1);
         if(param1 is Sprite)
         {
            _loc2_ = Sprite(param1).getBounds(param1);
            if(Config.DEBUG_DRAW_ISO_LINE)
            {
               drawLine(Sprite(param1),_loc2_.x,0x7305DC6A ^ -536655382 ^ 0x22773113 ^ -1317952365,_loc2_.width,0x6E278F9F ^ -896533670 ^ 0x1D9C69C8 ^ -1187767027,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႗ႜါဃၦთႦსႤၑჀၝ၄ၳႥႋၦ၃ၨႫႆႁ့Ⴡ","გၿ჊Ⴈ჊ယჯၴခဿ჊ႀ၇წၡ჊"),0x4F42A2E8 ^ 0x33F3EE74 ^ -1495722292 ^ -630695343);
            }
         }
         this._7d81293153509cd2e1f21e74.addChildAt(param1,_loc3_);
      }
      
      public function _c1ccdb928cf168005fc7c4ff(param1:DisplayObject) : void
      {
         this._fd0245d263dc1a00ee8550ff.remove(param1);
         this._7d81293153509cd2e1f21e74.removeChild(param1);
      }
      
      public function update() : void
      {
         var _loc1_:Vector.<DisplayObject> = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0x2FAE28CF ^ 0x4D6F21D8 ^ -1406719247 ^ -823778330;
         var _loc5_:DisplayObject = null;
         var _loc6_:int = 0x60F6FCBF ^ -1913344522 ^ -1631209014 ^ 0x73C7E883;
         var _loc7_:int = -1083439696 ^ -471932421 ^ 0x37CA07AB ^ 0x6B78E3E0;
         var _loc8_:_90e27c4b11f9fb120563f45f = this._fd0245d263dc1a00ee8550ff.iterator;
         var _loc9_:int = this._fd0245d263dc1a00ee8550ff._c5b1f8c1e3752fc14dda6348();
         if(_loc9_ < this._7d81293153509cd2e1f21e74.numChildren)
         {
            _loc1_ = new Vector.<DisplayObject>();
            _loc4_ = int(this._7d81293153509cd2e1f21e74.numChildren - 1);
            while(_loc4_ >= (-1052582021 ^ -455110283 ^ 0x45F86F12 ^ 0x6065211C))
            {
               _loc2_ = this._7d81293153509cd2e1f21e74.getChildAt(_loc4_);
               if(this._fd0245d263dc1a00ee8550ff._f1fc650bcb22deb5361df2cd(_loc2_) == null)
               {
                  _loc1_.push(_loc2_);
               }
               _loc4_--;
            }
            for each(_loc2_ in _loc1_)
            {
               this._e212a4ed5e2246a1788a7970(_loc2_);
            }
         }
         else if(_loc9_ > this._7d81293153509cd2e1f21e74.numChildren)
         {
            _loc1_ = Vector.<DisplayObject>(this._fd0245d263dc1a00ee8550ff.getAll().concat());
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_.parent != this._7d81293153509cd2e1f21e74)
               {
                  this._fd0245d263dc1a00ee8550ff.remove(_loc5_);
               }
            }
         }
         while(_loc8_)
         {
            if(_loc8_.displayObject.y != _loc8_.lastY)
            {
               if(_loc3_ == null)
               {
                  _loc3_ = [];
               }
               _loc3_.push(_loc8_);
            }
            else if(_loc8_.prev != null && _loc8_.prev.displayObject.y > _loc8_.displayObject.y)
            {
               if(_loc3_ == null)
               {
                  _loc3_ = [];
               }
               if(_loc3_.indexOf(_loc8_.prev) == (-1138835875 ^ -1786962740 ^ 0x227CCB5F ^ -186608079))
               {
                  _loc3_.push(_loc8_.prev);
               }
            }
            _loc8_ = _loc8_.next;
         }
         if(_loc3_)
         {
            for each(_loc8_ in _loc3_)
            {
               _loc6_ = this._fd0245d263dc1a00ee8550ff._0a05bb3b1bcfa287e6a37a90(_loc8_);
               _loc7_ = this._fd0245d263dc1a00ee8550ff._59bac2fb883c90ee3853b2eb(_loc8_);
               _loc8_.lastY = _loc8_.displayObject.y;
               if(_loc6_ != _loc7_ && _loc7_ != (0x38A8338F ^ -1232678018 ^ 0x37B91789 ^ 0x46680887))
               {
                  this._7d81293153509cd2e1f21e74.addChildAt(_loc8_.displayObject,_loc7_);
               }
            }
         }
      }
      
      public function _76378135adf4667d0a28e439() : void
      {
         var _loc1_:int = 0x7CDEC05D ^ 0x11A8A64C ^ 0x4094DF63 ^ 0x59177696;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1562356390 ^ 0x070182CE ^ -743052775 ^ 0x02A1F26B))
            {
               case 0:
                  this._7d81293153509cd2e1f21e74.stage.invalidate();
                  _loc1_ = -1012086264 ^ 0x5ABB3786 ^ 0x10BF2230 ^ -44232615;
                  break;
               case 1:
                  this.update();
                  return;
               case 2:
                  this._fd0245d263dc1a00ee8550ff.reset();
                  if(this._7d81293153509cd2e1f21e74.stage != null)
                  {
                     _loc1_ = -755692494 ^ 0x21138529 ^ -880841815 ^ 0x4C6C2D54;
                  }
                  else
                  {
                     _loc1_ = -1571453372 ^ -1755507986 ^ -1130373952 ^ -43874419;
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
         this._7d81293153509cd2e1f21e74 = null;
         this._fd0245d263dc1a00ee8550ff._ef439af1a3d9aac5def41c6c();
      }
   }
}

