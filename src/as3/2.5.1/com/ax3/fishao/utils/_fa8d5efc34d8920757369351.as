package com.ax3.fishao.utils
{
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import com.ax3.fishao.view.dialogs.simple._3d8db2a210b1c092ee7299be;
   import com.ax3.fishao.view.dialogs.simple._4277f040b60ee9d5b8ce0a48;
   import com.ax3.fishao.view.dialogs.simple._ff2218d81320e3d6de3276ee;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.base.ResponseError;
   
   public class _fa8d5efc34d8920757369351
   {
      
      public function _fa8d5efc34d8920757369351()
      {
         super();
      }
      
      public static function _bbdc1e141d798ec73174d586(param1:String, param2:Function) : void
      {
         var _loc3_:_4277f040b60ee9d5b8ce0a48 = new _4277f040b60ee9d5b8ce0a48();
         _loc3_.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CONFIRM_ACTION);
         _loc3_.description = param1;
         _loc3_.buttonActionLeft.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_YES);
         _loc3_.callbackButtonLeft = param2;
         _loc3_.buttonActionRight.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_NO);
         _loc3_.show();
      }
      
      public static function _ec5b9c66a39c137b3f87a20d(param1:String, param2:String) : void
      {
         var _loc3_:_3d8db2a210b1c092ee7299be = new _3d8db2a210b1c092ee7299be();
         _loc3_.title = param1;
         _loc3_.description = param2;
         _loc3_.show();
      }
      
      public static function _b2f08e71c237117ac643d021(param1:String, param2:String, param3:String, param4:Function) : _ff2218d81320e3d6de3276ee
      {
         var _loc5_:_ff2218d81320e3d6de3276ee = new _ff2218d81320e3d6de3276ee();
         _loc5_.title = param1;
         _loc5_.description = param2;
         _loc5_.buttonAction.label = param3;
         _loc5_.callback = param4;
         _loc5_.show();
         return _loc5_;
      }
      
      public static function _ecb681b2bff0915b270b914b(param1:_5e1bab759fcaea6d1f84faa7) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:ResponseError = param1 as ResponseError;
         if(_loc6_ != null)
         {
            _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_loc6_.description);
            _loc3_ = _loc6_.descriptionData;
            if(_loc3_ != null)
            {
               for(_loc4_ in _loc3_)
               {
                  _loc2_ = _loc2_.replace(_loc4_,_loc3_[_loc4_]);
               }
            }
            _fa8d5efc34d8920757369351._ec5b9c66a39c137b3f87a20d(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_ERROR),_loc2_);
            _loc5_ = true;
         }
         return _loc5_;
      }
      
      public static function _90c56d60a54f9a591b9a2af2(param1:String) : _6e3e496e7a4ab1988577523d
      {
         var _loc2_:_6e3e496e7a4ab1988577523d = app.dialogFactory._a0d214350fb42da9f32557e6(_6e3e496e7a4ab1988577523d);
         _loc2_._e52343156d490543715f0266(param1);
         _loc2_.show();
         return _loc2_;
      }
   }
}

