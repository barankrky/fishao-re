package com.ax3.fishao.locations.lucky_raft
{
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.base.LocationModel;
   import protocol.sr.UpdateResp;
   
   public class LocationModelLuckyRaft extends LocationModel
   {
      
      public function LocationModelLuckyRaft(param1:int)
      {
         super(param1);
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
                  case "fishes_available":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_BOARD_FISH,_loc2_));
                     break;
                  case "force_move_to_lucky_sailor":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.FORCE_MOVE_TO_LUCKY_SAILOR,_loc2_));
               }
            }
         }
      }
   }
}

