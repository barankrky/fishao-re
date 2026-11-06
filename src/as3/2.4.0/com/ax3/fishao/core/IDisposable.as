package com.ax3.fishao.core
{
   public interface IDisposable
   {
      
      function get isCleanuped() : Boolean;
      
      function cleanup() : void;
   }
}

