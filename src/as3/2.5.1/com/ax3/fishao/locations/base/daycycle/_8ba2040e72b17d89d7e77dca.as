package com.ax3.fishao.locations.base.daycycle
{
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import flash.display.DisplayObject;
   
   public class _8ba2040e72b17d89d7e77dca
   {
      
      private var _51f5c656af6e85bb005a03ff:Array;
      
      private var _4357d4c850604b0c6ab53250:Array;
      
      private var _d5d22608eae557a7a5913914:Vector.<DisplayObject>;
      
      public function _8ba2040e72b17d89d7e77dca()
      {
         super();
         this.init();
      }
      
      public function get objects() : Vector.<DisplayObject>
      {
         return this._d5d22608eae557a7a5913914;
      }
      
      public function get nightFilter() : Array
      {
         return this._51f5c656af6e85bb005a03ff;
      }
      
      public function set nightFilter(param1:Array) : void
      {
         this._51f5c656af6e85bb005a03ff = param1;
         this._4357d4c850604b0c6ab53250 = _9c52777792d76fde110d23c0._6b85eafdbaf608366d48da90(this._51f5c656af6e85bb005a03ff);
      }
      
      private function init() : void
      {
         this._d5d22608eae557a7a5913914 = new Vector.<DisplayObject>(-340743167 ^ -591933344 ^ 0x5E57969B ^ 0x6950EAFA);
         this._51f5c656af6e85bb005a03ff = [];
         this._4357d4c850604b0c6ab53250 = [];
      }
      
      public function _68bb5ce7688967072d53242b(param1:Number) : void
      {
         _9c52777792d76fde110d23c0._aca02dabec9019b8f4707df9(this._51f5c656af6e85bb005a03ff,this._4357d4c850604b0c6ab53250,param1);
      }
      
      public function _cd00d97cac65b4dc892b5324(param1:DisplayObject) : void
      {
         this._d5d22608eae557a7a5913914.push(param1);
      }
      
      public function _cdef7669c395665e864c7a41() : void
      {
         _9c52777792d76fde110d23c0._85beba13680a4d2af8926bfa(this._d5d22608eae557a7a5913914,[]);
      }
      
      public function _aed610f81e806de6fe467d97() : void
      {
         _9c52777792d76fde110d23c0._85beba13680a4d2af8926bfa(this._d5d22608eae557a7a5913914,this._51f5c656af6e85bb005a03ff);
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._51f5c656af6e85bb005a03ff = null;
         this._4357d4c850604b0c6ab53250 = null;
         this._d5d22608eae557a7a5913914 = null;
      }
   }
}

