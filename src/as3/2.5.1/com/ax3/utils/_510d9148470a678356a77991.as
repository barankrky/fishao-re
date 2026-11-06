package com.ax3.utils
{
   import com.ax3.core.IResourceManager;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import flash.display.DisplayObjectContainer;
   
   public class _510d9148470a678356a77991
   {
      
      public function _510d9148470a678356a77991()
      {
         super();
      }
      
      public static function _dfc01609cda83a1c4e0a9ae9(param1:String, param2:DisplayObjectContainer, param3:IResourceManager, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:_a4e47350c89a50d87a148c28 = _538190a3fafcd450c2735904(param4,param5,param6,param7,param2);
         param3.replaceBitmapDataFromURL(_loc8_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(param1));
      }
      
      public static function _6c705fb8a87b0c80d1272891(param1:String, param2:DisplayObjectContainer, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:_a4e47350c89a50d87a148c28 = _538190a3fafcd450c2735904(param3,param4,param5,param6,param2);
         GameSwf.charsManager._b6dc96c0d7622099f91843de(_loc7_,param1);
      }
      
      private static function _538190a3fafcd450c2735904(param1:Number, param2:Number, param3:Number, param4:Number, param5:DisplayObjectContainer) : _a4e47350c89a50d87a148c28
      {
         var _loc6_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28();
         _loc6_.width = param1;
         _loc6_.height = param2;
         _loc6_._06f309e150bbba7e5aaf3e95(param3,param4);
         removeAllChildren(param5);
         param5.addChild(_loc6_);
         return _loc6_;
      }
   }
}

