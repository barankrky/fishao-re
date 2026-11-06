package com.ax3.fishao.view.dialogs.collections.controllers
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CatchInfoSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.collections.model.ECollectionType;
   import com.ax3.fishao.view.dialogs.collections.views.ViewCollectionItem;
   import flash.events.Event;
   
   public class ControllerCollectionItem extends Controller
   {
      
      private var _view:ViewCollectionItem;
      
      private var _type:int;
      
      private var _id:int;
      
      public function ControllerCollectionItem(param1:int, param2:int, param3:Boolean)
      {
         this._type = param1;
         this._id = param2;
         this._view = new ViewCollectionItem(this,this._type,this._id,param3);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:CatchInfoSwfDialog = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(this._type)
            {
               case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_NAME:
               case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_TYPE:
               case ECollectionType.ECT_CATCH_ALL_FISHES_AT_LOCATION:
               case ECollectionType.ECT_CATCH_SHINY_FISH_WITH_TYPE:
                  FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
                  _loc3_ = app.dialogFactory.getCatchInfoDialog();
                  _loc3_.setFish(this._id);
                  _loc3_.show();
                  _loc4_ = true;
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._view.handleEvents(true);
         var _loc1_:String = null;
         switch(this._type)
         {
            case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_NAME:
            case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_TYPE:
            case ECollectionType.ECT_CATCH_ALL_FISHES_AT_LOCATION:
            case ECollectionType.ECT_CATCH_SHINY_FISH_WITH_TYPE:
               _loc1_ = I18n.get("fish_" + this._id);
               break;
            case ECollectionType.ECT_COLLECT_FURNITURE:
            case ECollectionType.ECT_FURNITURE_FACTORY:
               _loc1_ = I18n.get("decoration_" + this._id);
               break;
            case ECollectionType.ECT_COLLECT_FOSSILS:
               _loc1_ = I18n.get("fossil_" + this._id);
               break;
            case ECollectionType.ECT_CRUSH_FRUITS:
               _loc1_ = I18n.get("fruit_" + this._id);
               break;
            default:
               Debug.assert(false);
         }
         if(_loc1_ != null)
         {
            this._view.tooltip = _loc1_;
         }
      }
      
      public function toString() : String
      {
         return "id:" + this._id;
      }
   }
}

