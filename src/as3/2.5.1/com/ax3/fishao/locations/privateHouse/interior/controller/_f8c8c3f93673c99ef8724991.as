package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.locations.privateHouse.interior.model._7c949d23cc4557a570d3160c;
   import com.ax3.fishao.locations.privateHouse.interior.view._1143d20128090c7c05f2ba53;
   import flash.display.DisplayObjectContainer;
   
   public class _f8c8c3f93673c99ef8724991 extends _33aca7ac1e49b5f2d10a6bbc
   {
      
      private var _4bbbd28f39bccdde9664e0fe:_7c949d23cc4557a570d3160c;
      
      private var _27d38bcf429ef69d51d814e0:_1143d20128090c7c05f2ba53 = new _1143d20128090c7c05f2ba53(this);
      
      public function _f8c8c3f93673c99ef8724991(param1:_7c949d23cc4557a570d3160c, param2:_afb131a8b7579a7c44d03bf8)
      {
         this._4bbbd28f39bccdde9664e0fe = param1;
         super(param1,this._27d38bcf429ef69d51d814e0,param2);
         this.init();
      }
      
      private function init() : void
      {
         _graphicsToLoad = -1914297329 ^ 0x211F4EFA ^ 0x0A2FB8AC ^ -1495870888;
      }
      
      override public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         var _loc6_:int = 0x1F08F821 ^ -170210114 ^ 0x361C740A ^ -284624740;
         loop0:
         while(true)
         {
            switch(_loc6_ ^ (-2048417009 ^ 0x0FC9089E ^ 0x61B6A1F3 ^ -664882583))
            {
               case 0:
                  super.load(param1,param2,param3,param4,param5);
                  this._27d38bcf429ef69d51d814e0.source.x = -648862285 ^ -1416019788 ^ 0x3E226462 ^ -1290272847;
                  return;
               case 1:
                  return;
               case 2:
                  if(this._4bbbd28f39bccdde9664e0fe.itemId == (-748763093 ^ 0x6BB29BCF ^ -2070827530 ^ 0x3C7DFE10))
                  {
                     _loc6_ = 0x686783CC ^ -516262015 ^ 0x64E05578 ^ -562357953;
                  }
                  else
                  {
                     _loc6_ = -2083369674 ^ 0x374DB122 ^ 0x3F22BAF4 ^ -1199833365;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function addItem() : void
      {
         this._27d38bcf429ef69d51d814e0._0ad9c1fdb902a66dc9200334(_controllerInterior.locationLayers.privateHouseWall);
      }
      
      override public function removeItem(param1:Boolean = true) : void
      {
         this._27d38bcf429ef69d51d814e0._2470e86c95bcc4626cc127cf(_controllerInterior.locationLayers.privateHouseWall);
         super.removeItem(param1);
      }
   }
}

