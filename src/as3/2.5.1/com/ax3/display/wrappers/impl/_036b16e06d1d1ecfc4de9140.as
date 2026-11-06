package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.utils.DisplayObjectUtil;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _036b16e06d1d1ecfc4de9140 implements _67a7ec125a01811d64af4dcc
   {
      
      private var _9d02be012cddf179e52924d5:Class;
      
      private var _83b25783ffc7fc906b20cc7e:Class;
      
      public function _036b16e06d1d1ecfc4de9140(param1:Class, param2:Class = null)
      {
         super();
         this._83b25783ffc7fc906b20cc7e = param1;
         this._9d02be012cddf179e52924d5 = param2;
      }
      
      public function _a54f7898880d608c7e1dc342(param1:Boolean = false) : DisplayObject
      {
         var _loc2_:IAssetWrapper = null;
         var _loc3_:* = new this._83b25783ffc7fc906b20cc7e();
         if(_loc3_ is DisplayObjectContainer)
         {
            DisplayObjectUtil.processTextFieldBold(_loc3_);
         }
         if(this._9d02be012cddf179e52924d5)
         {
            _loc2_ = new this._9d02be012cddf179e52924d5();
            _loc2_.process(_loc3_);
            _loc3_ = _loc2_;
         }
         return _loc3_;
      }
      
      public function process(param1:DisplayObject) : void
      {
      }
   }
}

