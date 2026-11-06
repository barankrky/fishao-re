package com.ax3.fishao.locations
{
   import com.ax3.fishao.Config;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _9d566fbc8faadcbcc57f15fe
   {
      
      private var _30447c23661313253c93f2e9:Rectangle;
      
      private var _1eb39d8b44a9bf143ac20468:Sprite;
      
      private const _14ebdaa0d848e85cca31f569:Number = -100;
      
      private var _3891baa4b3ed54b63dca5650:Vector.<_75a56749cf6f5fd557fa5b0c>;
      
      private var _ba7a07ce4f758f1b9055b34d:Vector.<_75a56749cf6f5fd557fa5b0c>;
      
      private var _ae76872833f087e43ee91cab:Number;
      
      private var _1b37aa661593a13b49baedae:Number;
      
      private var _83f2b6f8ee28fe1803076a6a:Number;
      
      private var _1c7b5fad6691b0fdde455c44:Number;
      
      private var _eb963ff3e3f8f25c313708c2:Rectangle;
      
      public function _9d566fbc8faadcbcc57f15fe(param1:Sprite)
      {
         super();
         this._1eb39d8b44a9bf143ac20468 = param1;
         this._3891baa4b3ed54b63dca5650 = new Vector.<_75a56749cf6f5fd557fa5b0c>();
         this._ba7a07ce4f758f1b9055b34d = new Vector.<_75a56749cf6f5fd557fa5b0c>();
      }
      
      public function set scrollRect(param1:Rectangle) : void
      {
         if(param1 != null && this._eb963ff3e3f8f25c313708c2 != null && int(this._eb963ff3e3f8f25c313708c2.x / (-119260997 ^ 0x75731795 ^ 0x58B36CE1 ^ -719043587)) == int(param1.x / (-121918172 ^ -229853913 ^ -318602872 ^ -403334727)) && int(this._eb963ff3e3f8f25c313708c2.y / (-1065764121 ^ -762945317 ^ -823086605 ^ -602969091)) == int(param1.y / (0x5F7E555A ^ -1474798742 ^ 0x7D07B176 ^ -1973305484)) && this._eb963ff3e3f8f25c313708c2.height == param1.height && this._eb963ff3e3f8f25c313708c2.width == param1.width)
         {
            return;
         }
         this._eb963ff3e3f8f25c313708c2 = param1.clone();
         this._30447c23661313253c93f2e9 = param1.clone();
         if(this._30447c23661313253c93f2e9.x > this._14ebdaa0d848e85cca31f569)
         {
            this._30447c23661313253c93f2e9.x += this._14ebdaa0d848e85cca31f569;
            this._30447c23661313253c93f2e9.width -= this._14ebdaa0d848e85cca31f569;
         }
         if(this._30447c23661313253c93f2e9.y > this._14ebdaa0d848e85cca31f569)
         {
            this._30447c23661313253c93f2e9.y += this._14ebdaa0d848e85cca31f569;
            this._30447c23661313253c93f2e9.height -= this._14ebdaa0d848e85cca31f569;
         }
         this._30447c23661313253c93f2e9.width -= this._14ebdaa0d848e85cca31f569;
         this._30447c23661313253c93f2e9.height -= this._14ebdaa0d848e85cca31f569;
         this._ae76872833f087e43ee91cab = this._30447c23661313253c93f2e9.x;
         this._1b37aa661593a13b49baedae = this._30447c23661313253c93f2e9.y;
         this._83f2b6f8ee28fe1803076a6a = this._30447c23661313253c93f2e9.right;
         this._1c7b5fad6691b0fdde455c44 = this._30447c23661313253c93f2e9.bottom;
         this._833400e53e3cccfda4fb5149();
      }
      
      private function _7991e503612ff347cbdb953f() : void
      {
         var _loc1_:int = 0x66F0D455 ^ -397860408 ^ 0x76E1150B ^ 0x34FA3309;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-658692479 ^ -766868334 ^ -1633505840 ^ 0x58F7DC58))
            {
               case 0:
                  this._1eb39d8b44a9bf143ac20468.graphics.clear();
                  _loc1_ = 0x053FBB18 ^ 0x5AFA9C91 ^ 0x5471A31E ^ -954837234;
                  break;
               case 1:
                  return;
               case 2:
                  this._1eb39d8b44a9bf143ac20468.graphics.lineStyle(-1286184624 ^ 0x20035401 ^ -586227686 ^ 0x4E5BD548,-1536921272 ^ -287339723 ^ 0x5793C3F1 ^ 0x1DD7398C);
                  this._1eb39d8b44a9bf143ac20468.graphics.drawRect(this._ae76872833f087e43ee91cab,this._1b37aa661593a13b49baedae,this._30447c23661313253c93f2e9.width,this._30447c23661313253c93f2e9.height);
                  _loc1_ = -1827610171 ^ 0x66399F57 ^ 0x12C99C4D ^ 0x2B423145;
                  break;
               case 3:
                  if(Config.CLEAR_DRAW_VISIBILITY)
                  {
                     _loc1_ = -770660354 ^ -611507424 ^ 0x57C918DE ^ -1829351525;
                  }
                  else
                  {
                     _loc1_ = 0x5BC3363F ^ -1020409924 ^ -1483404917 ^ -203871343;
                  }
                  break;
               case 4:
                  if(Config.DEBUG_DRAW_VISIBILITY)
                  {
                     _loc1_ = -658583950 ^ -1715465482 ^ -889245935 ^ 0x4723200D;
                  }
                  else
                  {
                     _loc1_ = 0x418E623C ^ -1435516327 ^ -871249006 ^ -346900371;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _833400e53e3cccfda4fb5149() : void
      {
         var _loc1_:_75a56749cf6f5fd557fa5b0c = null;
         for each(_loc1_ in this._3891baa4b3ed54b63dca5650)
         {
            this._039cf6f3a9438a286fca351d(_loc1_);
         }
      }
      
      private function _039cf6f3a9438a286fca351d(param1:_75a56749cf6f5fd557fa5b0c) : void
      {
         var _loc2_:DisplayObject = param1.displayObject;
         var _loc3_:Boolean = _loc2_.x + _loc2_.width + param1.offsetX >= this._ae76872833f087e43ee91cab && _loc2_.x - _loc2_.width + param1.offsetRight <= this._83f2b6f8ee28fe1803076a6a && _loc2_.y + _loc2_.height + param1.offsetY >= this._1b37aa661593a13b49baedae && _loc2_.y - _loc2_.height + param1.offsetBottom <= this._1c7b5fad6691b0fdde455c44;
         if(_loc3_)
         {
            if(param1.visible == false)
            {
               param1.visible = true;
               _loc2_.visible = true;
            }
            if(Config.DEBUG_DRAW_VISIBILITY)
            {
               this._26e4d0803d5725359ee72b4f(_loc2_,param1,true);
            }
         }
         else
         {
            if(param1.visible == true)
            {
               param1.visible = false;
               _loc2_.visible = false;
            }
            if(Config.DEBUG_DRAW_VISIBILITY)
            {
               this._26e4d0803d5725359ee72b4f(_loc2_,param1,false);
            }
         }
      }
      
      private function _26e4d0803d5725359ee72b4f(param1:DisplayObject, param2:_75a56749cf6f5fd557fa5b0c, param3:Boolean) : void
      {
         this._1eb39d8b44a9bf143ac20468.graphics.lineStyle(-1808065168 ^ -1324416181 ^ 0x7D788C1C ^ 0x584C9226,-404748303 ^ 0x73049E58 ^ 0x3FD33D19 ^ -1422435408);
         this._1eb39d8b44a9bf143ac20468.graphics.drawRect(param1.x + param2.offsetX,param1.y + param2.offsetY,param1.width + param2.offsetRight,param1.height + param2.offsetBottom);
      }
      
      public function _bb52e35f3bc3b32fc0cc3330(param1:Vector.<DisplayObject>, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Boolean = false) : void
      {
         var _loc7_:DisplayObject = null;
         for each(_loc7_ in param1)
         {
            this._cd00d97cac65b4dc892b5324(_loc7_,param2,param3,param4,param5,param6);
         }
      }
      
      public function _cd00d97cac65b4dc892b5324(param1:DisplayObject, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Boolean = false) : void
      {
         var _loc7_:_75a56749cf6f5fd557fa5b0c = new _75a56749cf6f5fd557fa5b0c();
         _loc7_.displayObject = param1;
         _loc7_.offsetX = param2;
         _loc7_.offsetY = param3;
         _loc7_.offsetRight = param4;
         _loc7_.offsetBottom = param5;
         _loc7_.selfMove = param6;
         this._3891baa4b3ed54b63dca5650.push(_loc7_);
         if(_loc7_.selfMove)
         {
            this._ba7a07ce4f758f1b9055b34d.push(_loc7_);
         }
      }
      
      public function _612e5b50a32957241aa1a510(param1:DisplayObject) : void
      {
         var _loc2_:_75a56749cf6f5fd557fa5b0c = null;
         var _loc3_:Vector.<_75a56749cf6f5fd557fa5b0c> = new Vector.<_75a56749cf6f5fd557fa5b0c>();
         var _loc4_:_75a56749cf6f5fd557fa5b0c = null;
         for each(_loc2_ in this._3891baa4b3ed54b63dca5650)
         {
            if(_loc2_.displayObject != param1)
            {
               _loc3_.push(_loc2_);
            }
            else
            {
               _loc4_ = _loc2_;
            }
         }
         this._3891baa4b3ed54b63dca5650 = _loc3_.slice();
         _loc3_ = new Vector.<_75a56749cf6f5fd557fa5b0c>();
         if(_loc4_ != null && this._ba7a07ce4f758f1b9055b34d.indexOf(_loc4_) > (0x4BFF0A3C ^ -2020065052 ^ -1098284319 ^ -1928251450))
         {
            for each(_loc2_ in this._ba7a07ce4f758f1b9055b34d)
            {
               if(_loc2_.displayObject != param1)
               {
                  _loc3_.push(_loc2_);
               }
            }
            this._ba7a07ce4f758f1b9055b34d = _loc3_.slice();
         }
      }
      
      public function _c865673e0608682cda4f1e92() : void
      {
         var _loc1_:_75a56749cf6f5fd557fa5b0c = null;
         if(Config.DEBUG_DRAW_VISIBILITY)
         {
            this._7991e503612ff347cbdb953f();
         }
         for each(_loc1_ in this._ba7a07ce4f758f1b9055b34d)
         {
            this._039cf6f3a9438a286fca351d(_loc1_);
         }
      }
      
      public function destroy() : void
      {
         this._30447c23661313253c93f2e9 = null;
         this._1eb39d8b44a9bf143ac20468 = null;
         this._3891baa4b3ed54b63dca5650 = null;
         this._ba7a07ce4f758f1b9055b34d = null;
         this._eb963ff3e3f8f25c313708c2 = null;
      }
   }
}

