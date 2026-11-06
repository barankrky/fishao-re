package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _e12cb11c2be1d38c7c9f6051 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _713a302107563cd86431c6d5:_ee846cd4312a03d079da825c;
      
      private var _4949ecad77ec07907d066ea4:_8a55e6919385386ebc54f870;
      
      public function _e12cb11c2be1d38c7c9f6051(param1:DisplayObjectContainer)
      {
         this._713a302107563cd86431c6d5 = new _ee846cd4312a03d079da825c(this,param1);
         super(this._713a302107563cd86431c6d5);
      }
      
      public function set clubData(param1:Object) : void
      {
         var _loc2_:int = -2089021782 ^ 0x01FED506 ^ -1683627167 ^ -1402476485;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5D59DAC1 ^ -778044773 ^ -593451767 ^ -450472537))
            {
               case 0:
                  return;
               case 1:
                  this._4949ecad77ec07907d066ea4 = new _8a55e6919385386ebc54f870();
                  this._4949ecad77ec07907d066ea4.deserialize(param1);
                  this._713a302107563cd86431c6d5.emblemID = this._4949ecad77ec07907d066ea4.emblemID;
                  this._713a302107563cd86431c6d5.name = this._4949ecad77ec07907d066ea4.name;
                  return;
               case 2:
                  if(param1 == null)
                  {
                     _loc2_ = 0x4DDC74C5 ^ -65677323 ^ -975239139 ^ -1051296807;
                  }
                  else
                  {
                     _loc2_ = 0x31353795 ^ -1260723913 ^ 0x16847845 ^ 0x262B7E12;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_c6dd57dd12cf02bae4594249 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         var _loc5_:Object = param1;
         switch(this._713a302107563cd86431c6d5.viewEmblem === _loc5_ ? -197487529 ^ -435694093 ^ -1871432940 ^ -2109115728 : -1613459427 ^ -1682688581 ^ 0x0EA541B3 ^ 0x0AC5E414)
         {
            case 0:
               if(this._4949ecad77ec07907d066ea4 != null)
               {
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_c6dd57dd12cf02bae4594249);
                  _loc3_.entity = this._4949ecad77ec07907d066ea4;
                  _loc3_.show();
               }
               _loc4_ = true;
               break;
            default:
               Debug.assert(false);
         }
         return _loc4_;
      }
   }
}

