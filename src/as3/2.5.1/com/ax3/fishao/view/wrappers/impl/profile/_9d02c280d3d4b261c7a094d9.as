package com.ax3.fishao.view.wrappers.impl.profile
{
   import com.ax3.core.App;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.fishao.view.wrappers._767872a2ca68f8601a59876b;
   import flash.geom.Rectangle;
   
   public class _9d02c280d3d4b261c7a094d9 extends _74fc9619a6ff36ad8a95b083 implements _767872a2ca68f8601a59876b, IAssetWrapperWithFactory
   {
      
      public static const PANEL_POSITION_RECTANGLE:Rectangle = new Rectangle(-629754911 ^ 0x49700A44 ^ -1968368010 ^ 0x19ABAF7D,0x76EAFED5 ^ -251822795 ^ -1065323140 ^ 0x4697F6AE,0x2D3FEEDF ^ -1926378791 ^ -2041435501 ^ 0x26400CD1,-1052790559 ^ 0x7030E58B ^ -2054384949 ^ 0x3483C643);
      
      protected var _panelRectangle:Rectangle;
      
      protected var _app:App;
      
      protected var _swfFileName:String;
      
      protected var _login:String;
      
      private var _7ed49fe3679381b7ad7746e4:Boolean;
      
      protected var _isLoaded:Boolean = false;
      
      protected var _updateCallback:Function;
      
      public function _9d02c280d3d4b261c7a094d9()
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
         this._7ed49fe3679381b7ad7746e4 = false;
      }
      
      protected function _06764c2cef0a83e404316a1f() : void
      {
         var _loc1_:int = -1739744725 ^ -981139425 ^ -1402409484 ^ 0x405843DF;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1104564221 ^ -1769488954 ^ 0x36D1825F ^ -1350059129))
            {
               case 0:
                  this._updateCallback(this);
                  this._updateCallback = null;
                  _loc1_ = -1839390162 ^ -1860308716 ^ -160928536 ^ 0x44D08BCE;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._updateCallback != null)
                  {
                     _loc1_ = 0x68E08DAA ^ -1146632480 ^ 0x40538AD0 ^ 0x22ECF587;
                  }
                  else
                  {
                     _loc1_ = -1562133026 ^ -1194556601 ^ -811045835 ^ 0x647F66B0;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
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
         this._7ed49fe3679381b7ad7746e4 = true;
      }
      
      public function get needUpdate() : Boolean
      {
         return this._7ed49fe3679381b7ad7746e4;
      }
      
      public function get login() : String
      {
         return this._login;
      }
   }
}

