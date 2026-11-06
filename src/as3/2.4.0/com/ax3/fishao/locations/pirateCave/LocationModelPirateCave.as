package com.ax3.fishao.locations.pirateCave
{
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   import com.ax3.fishao.quests.ManagerQuests;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.UpdateResp;
   
   public class LocationModelPirateCave extends SublocationModel
   {
      
      private var _managerQuests:ManagerQuests;
      
      private var _locationLayers:LocationLayersPirateCave;
      
      public function LocationModelPirateCave(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogPirateCave).locationLayersBase as LocationLayersPirateCave;
      }
      
      override public function onEnterSublocation(param1:EnterSublocationSuccessResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super.onEnterSublocation(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               switch(_loc3_)
               {
                  case "fishcoinsItems":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.LOAD_LOCATION_ITEMS,_loc2_));
               }
            }
         }
      }
      
      private function init() : void
      {
         this._managerQuests = GameSwf.instance.managerQuests;
      }
      
      override public function updateHandler(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super.updateHandler(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               switch(_loc3_)
               {
                  case "fishcoinCollected":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_LOCATION_ITEM,_loc2_));
               }
            }
         }
      }
   }
}

