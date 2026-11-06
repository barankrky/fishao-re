package com.ax3.fishao.display.panels.inventory.fishingLine
{
   import com.ax3.fishao.display.panels.inventory.base.ViewButtonInventory;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.fishingLine.views.ViewReel;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class ViewButtonFishingLine extends ViewButtonInventory
   {
      
      private var _source:SourceButtonFishingLine = new SourceButtonFishingLine();
      
      private var _viewReel:ViewReel;
      
      public function ViewButtonFishingLine(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set color(param1:String) : void
      {
         this._viewReel.color = param1;
      }
      
      public function updateTooltip(param1:uint, param2:uint) : void
      {
         this._source.lineLength = param2;
         this._source.lineLevel = param1;
      }
      
      private function init() : void
      {
         UtilsTextField.setBoldFont(this._source.title);
         this._source.viewCount.visible = false;
         this._source.mouseChildren = false;
         this._source.buttonMode = true;
         this._viewReel = new ViewReel(controller,new gViewReel());
         this.image = this._viewReel.source;
         this._source.title.text = I18n.get(EStringType.EST_UI_BUTTON_FISHING_LINE);
      }
   }
}

