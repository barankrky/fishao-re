package com.ax3.fishao.view.dialogs.base.controllers.implementations
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import flash.display.DisplayObject;
   
   public class ControllerWithItems extends Controller
   {
      
      public function ControllerWithItems(param1:IView)
      {
         super(param1);
      }
      
      protected function clearItems(param1:Array) : void
      {
         var _loc2_:Controller = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.view.source;
               _loc3_.parent.removeChild(_loc3_);
               _loc2_.cleanup();
            }
         }
         param1.length = 0;
      }
      
      protected function placeItemsHorizontal(param1:Array, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:IController = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = param2;
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            if(_loc8_ % param3 == 0)
            {
               _loc7_ = param2;
            }
            _loc5_ = param1[_loc8_];
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.view.source;
               _loc6_.x = _loc7_;
               _loc7_ += _loc6_.width + param4;
            }
            _loc8_++;
         }
      }
      
      protected function placeItemsVertical(param1:Array, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:IController = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = param2;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         while(_loc9_ < param1.length)
         {
            if(_loc9_ % param3 == 0)
            {
               _loc7_ = param2;
            }
            _loc5_ = param1[_loc9_];
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.view.source;
               _loc6_.y = _loc7_;
               _loc7_ += _loc6_.height + param4;
            }
            _loc9_++;
         }
      }
      
      protected function updatePage(param1:Array, param2:int, param3:int) : void
      {
         var _loc4_:IController = null;
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            _loc4_ = param1[_loc6_];
            if(_loc4_ != null)
            {
               _loc5_ = Math.floor(_loc6_ / param3);
               if(_loc5_ == param2)
               {
                  _loc4_.view.show();
               }
               else
               {
                  _loc4_.view.hide();
               }
            }
            _loc6_++;
         }
      }
   }
}

