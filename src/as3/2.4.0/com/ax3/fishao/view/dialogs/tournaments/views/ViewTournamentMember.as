package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewTournamentMember extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelLevel:TextField;
      
      private var _labelLogin:TextField;
      
      private var _viewStatus:ViewStatus;
      
      public function ViewTournamentMember(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set level(param1:int) : void
      {
         this._labelLevel.text = param1.toString();
      }
      
      public function set login(param1:String) : void
      {
         this._labelLogin.text = param1;
      }
      
      public function set isReady(param1:Boolean) : void
      {
         this._viewStatus.isReady = param1;
      }
      
      public function set statusText(param1:String) : void
      {
         this._viewStatus.label = param1;
      }
      
      private function init() : void
      {
         this._labelLevel = Debug.assertProperty(this._source,"labelLevel",TextField);
         this._labelLogin = Debug.assertProperty(this._source,"labelLogin",TextField);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._source,"viewStatus",DisplayObjectContainer);
         this._viewStatus = new ViewStatus(controller,_loc1_);
      }
   }
}

