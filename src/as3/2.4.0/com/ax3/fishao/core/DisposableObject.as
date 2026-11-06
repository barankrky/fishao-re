package com.ax3.fishao.core
{
   import com.ax3.fishao.debug.Debug;
   
   public class DisposableObject implements IDisposable
   {
      
      private var _isCleanuped:Boolean;
      
      public function DisposableObject()
      {
         super();
      }
      
      public function get isCleanuped() : Boolean
      {
         return this._isCleanuped;
      }
      
      public function cleanup() : void
      {
         Debug.assert(!this._isCleanuped,this + "Already cleanuped");
         this._isCleanuped = true;
      }
   }
}

