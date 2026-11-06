package com.ax3.fishao.view.wrappers.impl.profile
{
   import com.ax3.core.App;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.fishao.view.wrappers.ITabPanelWrapper;
   import flash.geom.Rectangle;
   
   public class ProfilePanelWrapper extends ProfileWrapper implements ITabPanelWrapper, IAssetWrapperWithFactory
   {
      
      public static const PANEL_POSITION_RECTANGLE:Rectangle = new Rectangle(174,50,580,482);
      
      protected var _panelRectangle:Rectangle;
      
      protected var _app:App;
      
      protected var _swfFileName:String;
      
      protected var _login:String;
      
      private var _needUpdate:Boolean;
      
      protected var _isLoaded:Boolean = false;
      
      protected var _updateCallback:Function;
      
      public function ProfilePanelWrapper()
      {
         super();
         this._panelRectangle = PANEL_POSITION_RECTANGLE.clone();
      }
      
      public function set visible(param1:Boolean) : void
      {
         _asset.visible = param1;
      }
      
      public function update(param1:Function) : void
      {
         this._updateCallback = param1;
         this._needUpdate = false;
      }
      
      protected function callUpdateCallback() : void
      {
         if(this._updateCallback != null)
         {
            this._updateCallback(this);
            this._updateCallback = null;
         }
      }
      
      public function get width() : Number
      {
         return _asset.width;
      }
      
      public function get x() : int
      {
         return _asset.x;
      }
      
      public function set x(param1:int) : void
      {
         _asset.x = param1;
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._app = param1;
         this._swfFileName = param2;
      }
      
      public function set login(param1:String) : void
      {
         this._login = param1;
         this._needUpdate = true;
      }
      
      public function get needUpdate() : Boolean
      {
         return this._needUpdate;
      }
      
      public function get login() : String
      {
         return this._login;
      }
   }
}

