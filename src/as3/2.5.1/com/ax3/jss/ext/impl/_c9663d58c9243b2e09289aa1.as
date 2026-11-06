package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.api.booster.RequestBoosterExp;
   import protocol.api.booster.RequestBoosterFishRadar;
   import protocol.api.booster.RequestBoosterLuckPotion;
   import protocol.api.booster.RequestBoosterMagicWatch;
   import protocol.api.booster.RequestBoosterPower;
   import protocol.api.booster.RequestBoosterShinyPotion;
   import protocol.cr.ShowPlingReq;
   
   public class _c9663d58c9243b2e09289aa1 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _c9663d58c9243b2e09289aa1()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _837158cc96737589e96c709d(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterLuckPotion(param1),param2);
      }
      
      public function _9436b886d5d27d413f08a5a8(param1:Function) : void
      {
         _connection.send(new RequestBoosterMagicWatch(),param1);
      }
      
      public function _8dbff5f13cddcb882f283ff1(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterFishRadar(param1),param2);
      }
      
      public function _753690392359577afd593c16(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterExp(param1),param2);
      }
      
      public function _27be87a5d5a96e9e7cb9153d(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterShinyPotion(param1),param2);
      }
      
      public function _237a3e8835cfce0194e0444e(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterPower(param1),param2);
      }
      
      public function _b621a4095c34de451ead5022(param1:int) : void
      {
         _connection.send(new ShowPlingReq(param1),null);
      }
   }
}

