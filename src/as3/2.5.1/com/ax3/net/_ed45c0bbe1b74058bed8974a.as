package com.ax3.net
{
   import flash.display.Loader;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.setTimeout;
   
   public class _ed45c0bbe1b74058bed8974a extends Loader
   {
      
      private var _70bc337dac166e266e9b2e55:int = 0;
      
      private var _9ab7383b19da6b63f4013ca2:URLRequest;
      
      private var _430c773c6c354102ef05675d:LoaderContext;
      
      public function _ed45c0bbe1b74058bed8974a(param1:int = 999)
      {
         super();
         this._70bc337dac166e266e9b2e55 = param1;
         contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         var _loc2_:int = -1725447747 ^ 0x50D096A9 ^ 0x5C7A17A5 ^ -1032967829;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5828DB01 ^ 0x7F0A24B8 ^ 0x74AD7ABE ^ 0x046CECDF))
            {
               case 0:
                  return;
               case 1:
                  param1.stopImmediatePropagation();
                  _loc2_ = -1645095006 ^ 0x2DA15E04 ^ -1249288476 ^ 0x523ABE9A;
                  break;
               case 2:
                  if(this.repeat())
                  {
                     _loc2_ = -818616200 ^ 0x3D7A1C97 ^ -1748376189 ^ 0x326478B5;
                  }
                  else
                  {
                     _loc2_ = -241253117 ^ 0x1EBA21B5 ^ 0x7CD69E5A ^ -1005513932;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function repeat() : Boolean
      {
         if(this._70bc337dac166e266e9b2e55-- > (0x685A7060 ^ -1741517310 ^ 0x6E31F317 ^ -1638331020))
         {
            setTimeout(this.load,-815616107 ^ 0x2BEC091F ^ 0x05993F05 ^ -518545825,this._9ab7383b19da6b63f4013ca2,this._430c773c6c354102ef05675d);
            return true;
         }
         return false;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         this._9ab7383b19da6b63f4013ca2 = param1;
         this._430c773c6c354102ef05675d = param2;
         super.load(param1,param2);
      }
      
      public function get url() : String
      {
         return this._9ab7383b19da6b63f4013ca2 != null ? this._9ab7383b19da6b63f4013ca2.url : null;
      }
   }
}

