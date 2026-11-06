package com.ax3.fishao.view.dialogs.fishes.model
{
   import com.ax3.display.tfs.ParamsApplier;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.utils.empty;
   
   public class FishUserInfo
   {
      
      public var id:int;
      
      public var notepad:String;
      
      public var countTotal:int;
      
      public var countShiny:int;
      
      public var average:Number;
      
      public var biggest:Number;
      
      public var biggestServers:Number;
      
      public var locationIds:Array;
      
      public var baitIds:Array;
      
      public var isActive:Boolean;
      
      private var _displayName:String;
      
      public function FishUserInfo()
      {
         super();
      }
      
      public function get displayName() : String
      {
         if(empty(this._displayName))
         {
            if(I18n.exist("fish_" + this.id))
            {
               this._displayName = I18n.get("fish_" + this.id);
            }
            else
            {
               this._displayName = "";
            }
         }
         return this._displayName;
      }
      
      public function deserialize(param1:Object) : void
      {
         this.id = Debug.assertProperty(param1,"fish_id");
         this.countTotal = Debug.assertProperty(param1,"count_total");
         this.countShiny = Debug.assertProperty(param1,"count_shiny");
         this.average = Debug.assertProperty(param1,"average");
         this.biggest = Debug.assertProperty(param1,"biggest");
         this.biggestServers = Debug.assertProperty(param1,"biggestServers");
         var _loc2_:String = Debug.assertProperty(param1,"locationIds");
         this.locationIds = _loc2_.split(",");
         this.locationIds.forEach(ParamsApplier.parseIntInArrayForEach);
         var _loc3_:String = Debug.assertProperty(param1,"baitIds");
         this.baitIds = _loc3_.split(",");
         this.baitIds.forEach(ParamsApplier.parseIntInArrayForEach);
         this.notepad = Debug.assertProperty(param1,"notepad");
      }
   }
}

