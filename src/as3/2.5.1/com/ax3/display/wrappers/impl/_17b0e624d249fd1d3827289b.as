package com.ax3.display.wrappers.impl
{
   import com.ax3.fishao.config._1137556d0c60e275233e9d5d;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.view.buttons._859da1aab188978c2cb80792;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class _17b0e624d249fd1d3827289b
   {
      
      private const _c188092fee0a36ec9552f6df:int = 5;
      
      private var _f84d7bdc370ca198ddbe5868:MovieClip;
      
      private var _3d4cd027f5c6085a2099b5bf:DisplayObjectContainer;
      
      private var _f0cd7b02adf722a17b815804:Vector.<_859da1aab188978c2cb80792>;
      
      private var _625b09ceeb62f9f13163c939:_859da1aab188978c2cb80792 = null;
      
      private var _61ca3ffebdbbf697c8973a5a:Sprite;
      
      private var _3c8bf03e6fca193fa96f7de9:int;
      
      public function _17b0e624d249fd1d3827289b(param1:MovieClip, param2:DisplayObjectContainer, param3:int)
      {
         super();
         this._f84d7bdc370ca198ddbe5868 = param1;
         this._3d4cd027f5c6085a2099b5bf = param2;
         this._3c8bf03e6fca193fa96f7de9 = param3;
         this._f0cd7b02adf722a17b815804 = new Vector.<_859da1aab188978c2cb80792>();
      }
      
      public function _4096a421aec0e1671583161c(param1:Vector.<_91aad973ddd3030366bf3e1f>) : void
      {
         var _loc2_:_859da1aab188978c2cb80792 = null;
         var _loc3_:_91aad973ddd3030366bf3e1f = null;
         var _loc4_:Number = NaN;
         var _loc5_:_859da1aab188978c2cb80792 = null;
         for each(_loc2_ in this._f0cd7b02adf722a17b815804)
         {
            if(_loc2_.parent != null)
            {
               _loc2_.parent.removeChild(_loc2_);
            }
            _loc2_.removeEventListener(MouseEvent.CLICK,this._0ff30780290927d8c7f41c63);
         }
         this._f0cd7b02adf722a17b815804 = new Vector.<_859da1aab188978c2cb80792>();
         for each(_loc3_ in param1)
         {
            _loc4_ = param1.indexOf(_loc3_);
            _loc5_ = new _859da1aab188978c2cb80792(_loc3_,_loc4_);
            this._f0cd7b02adf722a17b815804.push(_loc5_);
            _loc5_.x = this._f84d7bdc370ca198ddbe5868.x + _loc4_ * (_loc5_.width + this._c188092fee0a36ec9552f6df);
            _loc5_.y = this._f84d7bdc370ca198ddbe5868.y;
            _loc5_.addEventListener(MouseEvent.CLICK,this._0ff30780290927d8c7f41c63,false,-1541649932 ^ 0x46671FF6 ^ -1449775963 ^ 0x4BED7AA7,true);
            this._3d4cd027f5c6085a2099b5bf.addChild(_loc5_);
            if(this._625b09ceeb62f9f13163c939 == null)
            {
               this._cbae5b880f2e13bbc20cbae8(_loc5_);
            }
         }
      }
      
      private function _0ff30780290927d8c7f41c63(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x1FA04E74 ^ -365416286 ^ 0x580F1AB2 ^ 0x4FA8D745;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x097B698E ^ -404905176 ^ 0x49F1CA9F ^ 0x4568B318))
            {
               case 0:
                  if(param1.currentTarget is _859da1aab188978c2cb80792)
                  {
                     _loc2_ = 0x5D32B52E ^ -1959914069 ^ -610240644 ^ -276601638;
                  }
                  else
                  {
                     _loc2_ = -475137368 ^ -168780771 ^ -702037590 ^ 0x2245143F;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item);
                  this._cbae5b880f2e13bbc20cbae8(_859da1aab188978c2cb80792(param1.currentTarget));
                  _loc2_ = 0x21717BDE ^ -1536760845 ^ 0x0A5FA1B5 ^ 0x6D778AB8;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _cbae5b880f2e13bbc20cbae8(param1:_859da1aab188978c2cb80792) : void
      {
         var _loc2_:int = -1062593796 ^ 0x3068AAAC ^ 0x4D87560B ^ 0x1F3BC220;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3E6A73B1 ^ 0x6061D205 ^ 0x2B628822 ^ -686354964))
            {
               case 0:
                  this._625b09ceeb62f9f13163c939 = param1;
                  _859da1aab188978c2cb80792._35429b999fd955f4bca43653(this._625b09ceeb62f9f13163c939);
                  this._7bf1318372be3db7a50cd7f3();
                  return;
               case 1:
                  if(this._625b09ceeb62f9f13163c939 != null)
                  {
                     _loc2_ = 0x4F278B00 ^ -2075521079 ^ 0x4B607E54 ^ 0x2273DEE5;
                  }
                  else
                  {
                     _loc2_ = 0x728E5906 ^ -911150942 ^ -1789493706 ^ -1944652824;
                  }
                  break;
               case 2:
                  _859da1aab188978c2cb80792.clearBackground(this._625b09ceeb62f9f13163c939);
                  _loc2_ = 0x10662ECB ^ 0x2A369CE4 ^ -789574137 ^ 0x48DE9852;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get selectedColor() : _91aad973ddd3030366bf3e1f
      {
         return this._625b09ceeb62f9f13163c939.shopItemColor;
      }
      
      public function _36e02c53b4ca314d3d8ed766(param1:Sprite) : void
      {
         this._61ca3ffebdbbf697c8973a5a = param1;
         this._7bf1318372be3db7a50cd7f3();
      }
      
      private function _7bf1318372be3db7a50cd7f3() : void
      {
         var _loc1_:Array = null;
         if(this._61ca3ffebdbbf697c8973a5a != null)
         {
            _loc1_ = _1137556d0c60e275233e9d5d._a7917b59a63f30a1912f1382(this._3c8bf03e6fca193fa96f7de9,this._625b09ceeb62f9f13163c939.shopItemColor);
            this._61ca3ffebdbbf697c8973a5a.filters = _loc1_;
         }
      }
   }
}

