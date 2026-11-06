package com.ax3.fishao.view.dialogs.fishingLine.controllers
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.views.implementations._4814fc85d5debb91ad42a343;
   import com.ax3.fishao.view.dialogs.fishingLine.model._72a97cef3acbd28d8d164ec8;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   
   public class _a92a742da0323a1d9ea6f682 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _6a26242ef1f31cf7f766cfeb:_4814fc85d5debb91ad42a343 = new _4814fc85d5debb91ad42a343(this);
      
      private var _448c2909a9cdd4739e66b930:uint;
      
      private var _90cc3f30ef92a33fb8bc9a61:String;
      
      public function _a92a742da0323a1d9ea6f682(param1:String)
      {
         super(this._6a26242ef1f31cf7f766cfeb);
         this._90cc3f30ef92a33fb8bc9a61 = param1;
         this.init();
      }
      
      public function set enableSelection(param1:Boolean) : void
      {
         var _loc2_:int = 0x50DB56CD ^ 0x64799730 ^ 0x671119E7 ^ -815627551;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1225593757 ^ -1777772846 ^ 0x268C8BE9 ^ -1700369503))
            {
               case 0:
                  this.update(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR);
                  _loc2_ = 0x7B81F723 ^ 0x419E53A2 ^ 0x6269C16E ^ -995672297;
                  break;
               case 1:
                  return;
               case 2:
                  this._6a26242ef1f31cf7f766cfeb.enableSelection = param1;
                  if(param1)
                  {
                     _loc2_ = -1066165439 ^ 0x32E4A975 ^ -1101601302 ^ -804221657;
                  }
                  else
                  {
                     _loc2_ = 0x672BF439 ^ 0x224A025E ^ 0x21F13107 ^ -129917542;
                  }
                  break;
               case 3:
                  this._6a26242ef1f31cf7f766cfeb.isChecked = false;
                  _loc2_ = -740810095 ^ -167579850 ^ 0x727E3FDC ^ -881481597;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var target:Object = param1;
         var e:Event = param2;
         var result:Boolean = super._4f254116765eb1a39d6712be(target,e);
         if(!this._6a26242ef1f31cf7f766cfeb.isChecked)
         {
            this._6a26242ef1f31cf7f766cfeb.isChecked = true;
            app.user.fishingLineColor = this._90cc3f30ef92a33fb8bc9a61;
            _dfa25706e58a240c1e33e5c6.fscModel.extensionFishingLine.updateFishingLineColor(function(param1:_5e1bab759fcaea6d1f84faa7):void
            {
            },app.user.fishingLineColor);
         }
         return result;
      }
      
      private function init() : void
      {
         this._448c2909a9cdd4739e66b930 = _72a97cef3acbd28d8d164ec8._c5779887be8eacdb7aa956f2(this._90cc3f30ef92a33fb8bc9a61);
         this._6a26242ef1f31cf7f766cfeb.color = this._448c2909a9cdd4739e66b930;
         this._6a26242ef1f31cf7f766cfeb.autocheck = false;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR === _loc2_ ? -1512566996 ^ -1543174624 ^ -1450845034 ^ -1470573158 : -464993810 ^ -493439468 ^ 0x25F7AFD9 ^ 0x2329D822)
         {
            case 0:
               this._6a26242ef1f31cf7f766cfeb.isChecked = app.user.fishingLineColor == this._90cc3f30ef92a33fb8bc9a61;
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

