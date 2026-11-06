package com.ax3.fishao.view.dialogs.moneyTree.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.MovieClip;
   
   public class ViewMoneyTree extends ViewBase
   {
      
      private var _source:MovieClip;
      
      public function ViewMoneyTree(param1:IController, param2:MovieClip)
      {
         this._source = Debug.assertNotEqual(param2,null);
         super(param1,this._source);
      }
      
      public function set number(param1:uint) : void
      {
         this._source.gotoAndStop(param1);
      }
   }
}

