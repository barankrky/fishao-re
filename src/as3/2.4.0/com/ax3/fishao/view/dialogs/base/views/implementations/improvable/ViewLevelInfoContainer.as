package com.ax3.fishao.view.dialogs.base.views.implementations.improvable
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewLevelInfoContainer extends ViewBase
   {
      
      protected static const INSTANCE_NAME_LABEL_TITLE:String = "labelTitle";
      
      protected static const INSTANCE_NAME_VIEW_LEVEL_INFO:String = "viewLevelInfo";
      
      private var _source:DisplayObjectContainer;
      
      private var _sourceLevelInfo:DisplayObjectContainer;
      
      private var _labelTitle:TextField;
      
      public function ViewLevelInfoContainer(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set number(param1:uint) : void
      {
         var _loc2_:String = I18n.get(EStringType.EST_IMPROVABLE_LEVEL_INFO);
         this._labelTitle.text = _loc2_.replace(EStringTypeStubs.ESTS_LEVEL,param1);
      }
      
      public function get sourceLevelInfo() : DisplayObjectContainer
      {
         return this._sourceLevelInfo;
      }
      
      private function init() : void
      {
         this._labelTitle = Debug.assertProperty(this._source,INSTANCE_NAME_LABEL_TITLE,TextField);
         this._sourceLevelInfo = Debug.assertProperty(this._source,INSTANCE_NAME_VIEW_LEVEL_INFO,DisplayObjectContainer);
      }
   }
}

