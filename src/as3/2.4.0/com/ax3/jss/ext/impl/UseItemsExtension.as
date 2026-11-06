package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.api.booster.RequestBoosterExp;
   import protocol.api.booster.RequestBoosterFishRadar;
   import protocol.api.booster.RequestBoosterLuckPotion;
   import protocol.api.booster.RequestBoosterMagicWatch;
   import protocol.api.booster.RequestBoosterPower;
   import protocol.api.booster.RequestBoosterShinyPotion;
   import protocol.cr.ShowPlingReq;
   
   public class UseItemsExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function UseItemsExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function useLuckPotion(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterLuckPotion(param1),param2);
      }
      
      public function useMagicWatch(param1:Function) : void
      {
         _connection.send(new RequestBoosterMagicWatch(),param1);
      }
      
      public function useFishRadar(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterFishRadar(param1),param2);
      }
      
      public function useExpBooster(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterExp(param1),param2);
      }
      
      public function useShinyBooster(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterShinyPotion(param1),param2);
      }
      
      public function usePowerBooster(param1:int, param2:Function) : void
      {
         _connection.send(new RequestBoosterPower(param1),param2);
      }
      
      public function showPlingEndBooster(param1:int) : void
      {
         _connection.send(new ShowPlingReq(param1),null);
      }
   }
}

