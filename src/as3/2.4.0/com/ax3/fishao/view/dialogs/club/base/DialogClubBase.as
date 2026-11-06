package com.ax3.fishao.view.dialogs.club.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.club.base.tabs.ControllerTabs;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.base.FactoryClubPages;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   import protocol.api.clubs.page.EClubPageType;
   
   public class DialogClubBase extends DialogBase
   {
      
      protected var _entity:ClubInfo;
      
      protected var _controllerTabs:ControllerTabs;
      
      private var _pagesMap:Dictionary;
      
      private var _canOpenDialogInside:Boolean;
      
      private var _firstPageType:String;
      
      public function DialogClubBase(param1:String)
      {
         super(param1);
         this._pagesMap = new Dictionary(true);
      }
      
      public function get entity() : ClubInfo
      {
         return this._entity;
      }
      
      public function set entity(param1:ClubInfo) : void
      {
         this._entity = param1;
      }
      
      protected function get tabsTypes() : Array
      {
         return [];
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._canOpenDialogInside = param1;
      }
      
      public function set openOnPage(param1:String) : void
      {
         this._firstPageType = param1;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.createPagesAndSelectFirst();
         super.onAssetCreationComplete();
      }
      
      protected function createPagesAndSelectFirst() : void
      {
         var _loc1_:String = null;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:ControllerClubPage = null;
         var _loc4_:DisplayObjectContainer = Debug.assertProperty(_asset,"viewTabs");
         var _loc5_:Array = this.tabsTypes;
         this._controllerTabs = new ControllerTabs(_loc5_,_loc4_,this._entity);
         for each(_loc1_ in EClubPageType.all)
         {
            _loc2_ = Debug.assertProperty(_asset,_loc1_);
            if(_loc5_.indexOf(_loc1_) == -1)
            {
               _loc2_.visible = false;
            }
            else
            {
               _loc3_ = FactoryClubPages.createPage(_loc1_,this,_loc2_,this._entity,dialogAssetURL);
               _loc3_.canOpenDialogInside = this._canOpenDialogInside;
               this._pagesMap[_loc1_] = _loc3_;
            }
         }
         this._controllerTabs.pagesMap = this._pagesMap;
         this._controllerTabs.selectTab(this._firstPageType);
      }
      
      override public function close() : void
      {
         var _loc1_:String = null;
         var _loc2_:IController = null;
         this._controllerTabs.cleanup();
         this._controllerTabs = null;
         for(_loc1_ in this._pagesMap)
         {
            _loc2_ = this._pagesMap[_loc1_];
            _loc2_.cleanup();
         }
         this._pagesMap = null;
         super.close();
      }
   }
}

