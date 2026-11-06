package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.view.dialogs.holidays.controller._5ef415ea5a17a945920fa2ee;
   import com.ax3.fishao.view.dialogs.holidays.views._51ba0158a860b043fa168db6;
   import flash.display.DisplayObjectContainer;
   
   public class _000a8ac60f8176f68ddb5f87
   {
      
      private var _d424f0398d0ca05267571e28:Array;
      
      private var _4d5d0deaab2a662221cf0f20:_bd60f9ad6ef4aaf28041ce8f;
      
      public function _000a8ac60f8176f68ddb5f87()
      {
         super();
         this.init();
      }
      
      private static function _133061215749e94fe2a5f72c(param1:String) : DisplayObjectContainer
      {
         var _loc2_:DisplayObjectContainer = null;
         switch(param1)
         {
            case _79faae52d0fcb082083a102d.EHIT_SANTA_BALLOON:
               §§push(-1191369985 ^ -169339903 ^ -775291250 ^ -1663252368);
               break;
            case _79faae52d0fcb082083a102d.EHIT_PUMPKIN_HEAD:
               §§push(-862543182 ^ -933170970 ^ -550788353 ^ -606211926);
               break;
            default:
               §§push(-448141516 ^ 0x014B08EF ^ 0x269C0D51 ^ -1029774712);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new gViewSantaBalloon();
               break;
            case 1:
               _loc2_ = new gViewPumpkinHead();
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勯勇勄剪劇刭劽刵刦劢剠勠勽勍勊剚募劓剱劙刑劯劍劧勉剶勥劒勵分効刹删劯剼勐删剴剗刣勚剎划剳刹勃勣剺劭勷刬剾勵勐刟勉刨勻剢刉励劙勹刴创剸勍刡务劉剑劈剹劦勭刱刋助剮劉剟努劦勢力勰勺列剁刀动勌劊券剮剰劉勽剏则勜劷到勾勲剤勗劘劢剼剹劋剄剖劔剀刴刬劎勈劦劧刖劄劎勦劖勎勜劭划剽劥劫列刬勉前勊劅劘動","刢剝剥剨刮勉劅刄劸勋刓勍剘剴剑劺") + param1);
         }
         return _loc2_;
      }
      
      public function set locationLayers(param1:_bd60f9ad6ef4aaf28041ce8f) : void
      {
         this._4d5d0deaab2a662221cf0f20 = param1;
      }
      
      private function init() : void
      {
         this._d424f0398d0ca05267571e28 = [];
      }
      
      public function _9bf3030354cbcbeb64662f7d(param1:Array, param2:int) : void
      {
         var _loc3_:_4321d2f9e1f062249cff5e0c = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:_5ef415ea5a17a945920fa2ee = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.locationId == param2)
            {
               _loc4_ = _133061215749e94fe2a5f72c(_loc3_.type);
               _loc5_ = new _5ef415ea5a17a945920fa2ee(_loc3_,_loc4_);
               this._d424f0398d0ca05267571e28.push(_loc5_);
               this._4d5d0deaab2a662221cf0f20._b6c63454f97f7df50ecb6b3e(_loc5_.view as _51ba0158a860b043fa168db6);
            }
         }
      }
      
      public function _68f6ac41ebd2c947a9e19a82(param1:String, param2:Boolean, param3:Number = 0) : void
      {
         var _loc4_:_5ef415ea5a17a945920fa2ee = null;
         for each(_loc4_ in this._d424f0398d0ca05267571e28)
         {
            if((_loc4_.view as _51ba0158a860b043fa168db6).isEnabled != param2)
            {
               if(_loc4_.entity.type == param1)
               {
                  if(param2)
                  {
                     _loc4_.view.show(param3);
                  }
                  else
                  {
                     _loc4_.view.hide(param3);
                  }
               }
            }
         }
      }
      
      public function _585a1fdc57cc7d02db6cabf5(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:_5ef415ea5a17a945920fa2ee = null;
         var _loc4_:Boolean = false;
         for each(_loc3_ in this._d424f0398d0ca05267571e28)
         {
            if((_loc3_.view as _51ba0158a860b043fa168db6).hitTest(param1,param2))
            {
               _loc4_ = true;
               break;
            }
         }
         return _loc4_;
      }
   }
}

