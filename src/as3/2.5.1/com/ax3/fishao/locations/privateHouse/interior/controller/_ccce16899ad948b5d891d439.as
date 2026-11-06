package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.locations.privateHouse.interior.model._d51bc9c29e742835d21466e4;
   import com.ax3.fishao.locations.privateHouse.interior.view._66ed967de929abdaff278a9d;
   import flash.display.DisplayObjectContainer;
   
   public class _ccce16899ad948b5d891d439 extends _33aca7ac1e49b5f2d10a6bbc
   {
      
      private var _3855b1c7cba5b4c1ae03c79c:_d51bc9c29e742835d21466e4;
      
      private var _231c06ff11e77196afbabfb2:_66ed967de929abdaff278a9d = new _66ed967de929abdaff278a9d(this);
      
      public function _ccce16899ad948b5d891d439(param1:_d51bc9c29e742835d21466e4, param2:_afb131a8b7579a7c44d03bf8)
      {
         this._3855b1c7cba5b4c1ae03c79c = param1;
         super(param1,this._231c06ff11e77196afbabfb2,param2);
         this.init();
      }
      
      private function init() : void
      {
         _graphicsToLoad = 0x7672B354 ^ 0x0332B2F2 ^ -773201219 ^ -1532370150;
      }
      
      override public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         var _loc6_:int = -1579760935 ^ 0x651D3AAA ^ 0x06487C86 ^ 0x23AE21B5;
         loop0:
         while(true)
         {
            switch(_loc6_ ^ (0x730D521C ^ -422037006 ^ -96707752 ^ -1899719177))
            {
               case 0:
                  return;
               case 1:
                  if(this._3855b1c7cba5b4c1ae03c79c.itemId == (-1972554665 ^ 0x7BE4EFC9 ^ -55771677 ^ 0x0D25267A))
                  {
                     _loc6_ = -169983677 ^ 0x25C233C9 ^ -173480960 ^ -996592693;
                  }
                  else
                  {
                     _loc6_ = -909432121 ^ -2121400895 ^ -296685196 ^ 0x473B8331;
                  }
                  break;
               case 2:
                  super.load(param1,param2,param3,param4,param5);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function addItem() : void
      {
         this._231c06ff11e77196afbabfb2._0ad9c1fdb902a66dc9200334(_controllerInterior.locationLayers.privateHouseFloor);
      }
      
      override public function removeItem(param1:Boolean = true) : void
      {
         this._231c06ff11e77196afbabfb2._2470e86c95bcc4626cc127cf(_controllerInterior.locationLayers.privateHouseFloor);
         super.removeItem(param1);
      }
   }
}

