package com.ax3.signals
{
   public interface ISignal extends IOnceSignal
   {
      
      function add(param1:Function) : ISlot;
   }
}

