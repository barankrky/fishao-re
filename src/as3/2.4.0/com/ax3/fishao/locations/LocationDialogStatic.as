package com.ax3.fishao.locations
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import com.ax3.managers.GridManagerObject;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import protocol.api.base.ResponseWithData;
   
   public class LocationDialogStatic
   {
      
      public function LocationDialogStatic()
      {
         super();
      }
      
      public static function collectShell(param1:GridManagerObject) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_061_UI_Seashell_collect);
         var _loc2_:FieldShell = FieldShell(param1.data);
         FishaoFscModelManager.locationExtension.collectShellAt(_loc2_.position.x,_loc2_.position.y);
      }
      
      public static function isDifferentSublocationEnter(param1:SublocationEnter, param2:SublocationEnter) : Boolean
      {
         var _loc3_:Boolean = false;
         if(param1 == null && param2 != null || param1 != null && param2 == null || param1 != null && param2 != null && param1.id != param2.id)
         {
            _loc3_ = true;
         }
         return _loc3_;
      }
      
      public static function tryDisableBooster(param1:ResponseWithData, param2:String) : void
      {
         var _loc3_:Boolean = param1.hasDataProperty("usersAtLoc") && param1.hasDataProperty("npcesAtLoc");
         if(!_loc3_)
         {
            return;
         }
         GameSwf.instance.stopBoosterEffect(param2,false);
      }
      
      public static function tryGetBoosterData(param1:ResponseWithData, param2:String) : Object
      {
         var response:ResponseWithData = param1;
         var name:String = param2;
         var result:Object = null;
         try
         {
            result = response.getJsonData(name);
         }
         catch(e:Error)
         {
            Cc.error("tryGetBoosterData");
            Cc.error(e.toString());
            Cc.error(e.getStackTrace());
         }
         return result;
      }
      
      public static function removeGlowCell(param1:Sprite) : void
      {
         param1.visible = false;
         if(param1.parent != null)
         {
            param1.parent.removeChild(param1);
         }
         param1 = null;
      }
      
      public static function closeSublocationDialog() : void
      {
         GameSwf.instance.closeSublocationDialog();
      }
   }
}

