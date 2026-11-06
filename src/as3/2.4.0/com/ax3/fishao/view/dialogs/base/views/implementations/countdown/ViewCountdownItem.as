package com.ax3.fishao.view.dialogs.base.views.implementations.countdown
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   
   public class ViewCountdownItem extends ViewBase
   {
      
      private const EMPTY_FILTERS:Array = [];
      
      private const CURRENT_PLAYER_FILTER:Array = [new GlowFilter(16739328,1,20,20,10,1,true)];
      
      private var _source:DisplayObjectContainer;
      
      private var _labelPosition:TextField;
      
      private var _labelLogin:TextField;
      
      private var _labelCriteriaAutofit:TextFieldAutofitWrapper;
      
      private var _viewPopup:ViewCountdownItemPopup;
      
      public function ViewCountdownItem(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         this._labelPosition.text = param1.toString() + ".";
      }
      
      public function set login(param1:String) : void
      {
         this._labelLogin.text = param1.toString();
      }
      
      public function set criteria(param1:String) : void
      {
         this._labelCriteriaAutofit.text = param1;
      }
      
      public function set isPlayer(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         _loc2_ = param1 ? this.CURRENT_PLAYER_FILTER : this.EMPTY_FILTERS;
         this._labelPosition.filters = _loc2_;
         this._labelLogin.filters = _loc2_;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = new gViewCountdownItemPopup();
         this._viewPopup = new ViewCountdownItemPopup(controller,_loc1_);
         this._labelPosition = Debug.assertProperty(this._source,"labelPosition",TextField);
         this._labelLogin = Debug.assertProperty(this._source,"labelLogin",TextField);
         var _loc2_:TextField = Debug.assertProperty(this._source,"labelCriteria",TextField);
         this._labelCriteriaAutofit = new TextFieldAutofitWrapper(_loc2_);
         placeViews(false);
      }
      
      public function showPopup(param1:String) : void
      {
         this._source.addChild(this._viewPopup.source);
         this._viewPopup.source.x = 180;
         this._viewPopup.source.y = -25;
         this._viewPopup.label = "+" + param1;
         this._viewPopup.show();
      }
      
      override public function cleanup() : void
      {
         this._viewPopup.cleanup();
         this._viewPopup = null;
         this._labelPosition = null;
         this._labelLogin = null;
         this._labelCriteriaAutofit = null;
         super.cleanup();
      }
   }
}

