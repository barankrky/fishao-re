package com.ax3.fishao.view.dialogs.collections.tabs
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.events.MouseEvent;
   
   public class ViewButtonTab extends ViewBase
   {
      
      private var _source:gButtonTab = new gButtonTab();
      
      public function ViewButtonTab(param1:IController)
      {
         super(param1,this._source);
         this.handleEvents(true);
         this._source.label.mouseEnabled = false;
      }
      
      public function set label(param1:String) : void
      {
         this._source.label.text = param1;
         this._source.label.width = this._source.label.textWidth + 5;
         this._source.viewCenter.width = this._source.label.width + 5;
         this._source.viewRight.x = this._source.viewCenter.x + this._source.viewCenter.width;
      }
      
      public function get label() : String
      {
         return this._source.label.text;
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_049_UI_Switch_tab);
         super.onMouseClick(param1);
      }
      
      public function setActive(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:uint = 0;
         if(param1)
         {
            _loc4_ = param2 ? 3 : 1;
         }
         else if(param2)
         {
            _loc4_ = param3 ? 5 : 4;
         }
         else
         {
            _loc4_ = 2;
         }
         this._source.viewLeft.gotoAndStop(param1 ? 1 : 2);
         this._source.viewCenter.gotoAndStop(param1 ? 1 : 2);
         this._source.viewRight.gotoAndStop(_loc4_);
      }
   }
}

