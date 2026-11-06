package com.ax3.fishao.model
{
   import com.ax3.fishao.model.vo.PrivateHouseInteriorItemVO;
   import com.ax3.fishao.vars.app;
   
   public class DecorationItemsModel
   {
      
      private var _decorationShopItems:Array;
      
      public function DecorationItemsModel()
      {
         super();
      }
      
      public function getDecorationItems() : Array
      {
         return this._decorationShopItems;
      }
      
      public function setDecorationItems(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:PrivateHouseInteriorItemVO = null;
         var _loc4_:Object = null;
         var _loc5_:Object = param1;
         this._decorationShopItems = [];
         var _loc6_:Vector.<Object> = new Vector.<Object>();
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = app.privateHouseInteriorItemDict.get(_loc2_) as PrivateHouseInteriorItemVO;
            if(_loc3_ != null)
            {
               _loc4_ = {};
               _loc4_.id = _loc3_.id;
               _loc4_.itemId = _loc3_.id;
               _loc4_.priceFishbucks = _loc3_.priceFishbucks;
               _loc4_.priceFishcoins = _loc3_.priceFishcoins;
               _loc4_.type = _loc3_.type;
               _loc4_.rotation = "front";
               _loc4_.sizeX = _loc3_.size_x;
               _loc4_.sizeY = _loc3_.size_y;
               _loc4_.floor = 1;
               _loc4_.positionX = 0;
               _loc4_.positionY = 0;
               if(_loc4_.type == "furniture")
               {
                  _loc6_.push(_loc4_);
               }
               else
               {
                  this._decorationShopItems.push(_loc4_);
               }
            }
         }
         this.populateRow(_loc6_,0,3);
         this.populateRow(_loc6_,8,3);
         this.populateRow(_loc6_,0,7);
         this.populateRow(_loc6_,8,7);
      }
      
      private function populateRow(param1:Vector.<Object>, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:* = 4;
         while(_loc7_ < 4 && param1.length > 0)
         {
            _loc5_ = false;
            for(_loc6_ in param1)
            {
               _loc4_ = param1[_loc6_];
               if(_loc4_.sizeX == _loc8_)
               {
                  _loc4_.positionX = param2 + _loc7_;
                  _loc4_.positionY = param3;
                  this._decorationShopItems.push(_loc4_);
                  _loc7_ += _loc4_.sizeX;
                  _loc8_ = int(4 - _loc7_);
                  param1.splice(_loc6_ as int,1);
                  _loc5_ = true;
                  break;
               }
            }
            if(!_loc5_ && _loc8_ > 0)
            {
               _loc8_--;
            }
         }
      }
   }
}

