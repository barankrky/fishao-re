package com.ax3.fishao.locations.club_area.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.objects.ViewMonsterFish;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import com.ax3.fishao.view.dialogs.club_fish.DialogClubFish;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class ControllerClubViews extends Controller
   {
      
      private var _viewsBanners:Array;
      
      private var _viewsEmblems:Array;
      
      private var _plateFresh:ViewBase;
      
      private var _plateSalt:ViewBase;
      
      private var _monsterFish:ViewMonsterFish;
      
      public function ControllerClubViews()
      {
         var _loc1_:ViewBase = new ViewBase(this,new Sprite());
         super(_loc1_);
         this.init();
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:ViewClubBanner = null;
         for each(_loc2_ in this._viewsBanners)
         {
            _loc2_.name = param1;
         }
      }
      
      public function set emblemID(param1:int) : void
      {
         var _loc2_:ViewClubBanner = null;
         var _loc3_:ViewClubEmblem = null;
         for each(_loc2_ in this._viewsBanners)
         {
            _loc2_.emblemID = param1;
         }
         for each(_loc3_ in this._viewsEmblems)
         {
            _loc3_.emblemID = param1;
         }
      }
      
      public function set monsterFishSize(param1:Number) : void
      {
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubFish = null;
         var _loc4_:DialogClubFish = null;
         var _loc5_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc5_)
         {
            switch(param1)
            {
               case this._plateFresh:
                  _loc3_ = app.dialogFactory.getDialog(DialogClubFish);
                  _loc3_.isSalt = false;
                  _loc3_.show();
                  break;
               case this._plateSalt:
                  _loc4_ = app.dialogFactory.getDialog(DialogClubFish);
                  _loc4_.isSalt = true;
                  _loc4_.show();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc5_;
      }
      
      private function init() : void
      {
         this._viewsBanners = [];
         this._viewsEmblems = [];
      }
      
      public function addPlateSalt(param1:DisplayObjectContainer) : void
      {
         this._plateSalt = this.createPlate(param1);
      }
      
      public function addPlateFresh(param1:DisplayObjectContainer) : void
      {
         this._plateFresh = this.createPlate(param1);
      }
      
      private function createPlate(param1:DisplayObjectContainer) : ViewBase
      {
         var _loc2_:ViewBase = new ViewBase(this,param1);
         _loc2_.handleEvents(true);
         _loc2_.stopClickPropagation();
         param1.mouseChildren = true;
         param1.mouseEnabled = true;
         return _loc2_;
      }
      
      public function addViewBanner(param1:DisplayObjectContainer) : void
      {
         var _loc2_:ViewClubBanner = new ViewClubBanner(this,param1);
         this._viewsBanners.push(_loc2_);
      }
      
      public function addViewEmblem(param1:DisplayObjectContainer) : void
      {
         var _loc2_:ViewClubEmblem = new ViewClubEmblem(this,param1);
         this._viewsEmblems.push(_loc2_);
      }
      
      public function addMonsterFish(param1:DisplayObjectContainer) : void
      {
         this._monsterFish = new ViewMonsterFish(this,param1);
      }
      
      public function updateMonsterFishSize(param1:Number, param2:Boolean = true) : void
      {
         this._monsterFish.updateSize(param1,param2);
      }
   }
}

