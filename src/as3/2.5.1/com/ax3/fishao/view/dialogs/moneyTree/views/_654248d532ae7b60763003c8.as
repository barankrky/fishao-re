package com.ax3.fishao.view.dialogs.moneyTree.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.MovieClip;
   
   public class _654248d532ae7b60763003c8 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _caffccea4022476cb51b4d0e:MovieClip;
      
      public function _654248d532ae7b60763003c8(param1:_988093efdfa36e13bfd6c6cf, param2:MovieClip)
      {
         this._caffccea4022476cb51b4d0e = Debug.assertNotEqual(param2,null);
         super(param1,this._caffccea4022476cb51b4d0e);
      }
      
      public function set number(param1:uint) : void
      {
         this._caffccea4022476cb51b4d0e.gotoAndStop(param1);
      }
   }
}

