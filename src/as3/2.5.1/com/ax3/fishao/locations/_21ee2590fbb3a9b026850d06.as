package com.ax3.fishao.locations
{
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   
   public class _21ee2590fbb3a9b026850d06 implements _abbbb5592f09d3723539995b, _c36d2d5bdf0600686d3429c2
   {
      
      public var asset:DisplayObjectContainer;
      
      private var _45b24192b2ba1b13f5cbc080:_1c3337d0df0240fa0eb6e1b1;
      
      private var _2445e4889ee6b617c48eef1b:int;
      
      private var _b15e8fcc10cceb5e2feddb43:Boolean = false;
      
      private var _7041c00cd89ebfae5cc6e416:Vector.<_1c3337d0df0240fa0eb6e1b1> = new Vector.<_1c3337d0df0240fa0eb6e1b1>();
      
      private var _505c6b2e68b9297b54078063:Vector.<_c36d2d5bdf0600686d3429c2> = new Vector.<_c36d2d5bdf0600686d3429c2>();
      
      private var _83f9b5ce5482205c4467ed65:Vector.<_69eec7d2f73604da25ccda04>;
      
      private var _7aed14567e7cfcb67aec568d:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function _21ee2590fbb3a9b026850d06(param1:DisplayObjectContainer)
      {
         super();
         this.asset = param1;
         this._45b24192b2ba1b13f5cbc080 = null;
         this._2445e4889ee6b617c48eef1b = 0x5E65BA04 ^ 0x30120E48 ^ -428390767 ^ 0x77FF0D22;
      }
      
      public function _4abd7c3aad51c496276fb656() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:_895ba07ec8591e49b3139c32 = null;
         if(this._45b24192b2ba1b13f5cbc080 == null)
         {
            ++this._2445e4889ee6b617c48eef1b;
            if(this._2445e4889ee6b617c48eef1b < this.asset.numChildren)
            {
               _loc1_ = this.asset.getChildAt(this._2445e4889ee6b617c48eef1b);
               if(_loc1_ is Shape)
               {
                  this._45b24192b2ba1b13f5cbc080 = new _b42bdcefdcfefad3a62d7a17(_loc1_ as DisplayObject);
                  this._505c6b2e68b9297b54078063.push(this._45b24192b2ba1b13f5cbc080);
               }
               if(_loc1_ is MovieClip)
               {
                  if((_loc1_ as MovieClip).totalFrames == (0x1C37B43B ^ -1333499650 ^ -875173072 ^ 0x676637F4))
                  {
                     this._45b24192b2ba1b13f5cbc080 = new _b42bdcefdcfefad3a62d7a17(_loc1_ as DisplayObject);
                     this._505c6b2e68b9297b54078063.push(this._45b24192b2ba1b13f5cbc080);
                  }
                  else
                  {
                     _loc2_ = new _895ba07ec8591e49b3139c32(_loc1_ as MovieClip);
                     this._45b24192b2ba1b13f5cbc080 = _loc2_;
                     this._505c6b2e68b9297b54078063.push(this._45b24192b2ba1b13f5cbc080);
                     if(this._83f9b5ce5482205c4467ed65 == null)
                     {
                        this._83f9b5ce5482205c4467ed65 = new Vector.<_69eec7d2f73604da25ccda04>();
                     }
                     this._83f9b5ce5482205c4467ed65.push(_loc2_.bitmapSprite);
                  }
               }
            }
            else
            {
               this._edd090d6397de78f4f324fbf();
               this._b15e8fcc10cceb5e2feddb43 = true;
            }
         }
         else
         {
            this._45b24192b2ba1b13f5cbc080.tick();
            if(this._45b24192b2ba1b13f5cbc080.isComplete())
            {
               this._7041c00cd89ebfae5cc6e416.push(this._45b24192b2ba1b13f5cbc080);
               this._45b24192b2ba1b13f5cbc080 = null;
            }
         }
      }
      
      private function _edd090d6397de78f4f324fbf() : void
      {
         var _loc1_:_1c3337d0df0240fa0eb6e1b1 = null;
         var _loc2_:Vector.<Bitmap> = null;
         var _loc3_:Bitmap = null;
         var _loc4_:_de2a275c74ad73d373d2a7a8 = null;
         for each(_loc1_ in this._7041c00cd89ebfae5cc6e416)
         {
            if(_loc1_ is _b42bdcefdcfefad3a62d7a17)
            {
               (_loc1_ as _b42bdcefdcfefad3a62d7a17)._d1275084d2e36b0d41132e3e();
               _loc2_ = (_loc1_ as _b42bdcefdcfefad3a62d7a17).bitmaps;
               for each(_loc3_ in _loc2_)
               {
                  this._7aed14567e7cfcb67aec568d.push(_loc3_);
               }
            }
            if(_loc1_ is _895ba07ec8591e49b3139c32)
            {
               (_loc1_ as _895ba07ec8591e49b3139c32)._6566ae22b09217e310464a2a();
               _loc4_ = (_loc1_ as _895ba07ec8591e49b3139c32).bitmapSprite;
               _loc4_.play();
               this._7aed14567e7cfcb67aec568d.push(_loc4_);
            }
         }
      }
      
      public function isComplete() : Boolean
      {
         return this._b15e8fcc10cceb5e2feddb43;
      }
      
      public function destroy() : void
      {
         var _loc1_:_c36d2d5bdf0600686d3429c2 = null;
         for each(_loc1_ in this._505c6b2e68b9297b54078063)
         {
            _loc1_.destroy();
         }
         this._7aed14567e7cfcb67aec568d = null;
         this.asset = null;
      }
      
      public function _7120ced6b8dc8511e430ec67() : Vector.<_69eec7d2f73604da25ccda04>
      {
         return this._83f9b5ce5482205c4467ed65;
      }
      
      public function _8c7137adb6802e3295eaecbb() : Vector.<DisplayObject>
      {
         return this._7aed14567e7cfcb67aec568d;
      }
   }
}

