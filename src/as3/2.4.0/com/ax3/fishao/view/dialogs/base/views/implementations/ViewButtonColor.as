package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   
   public class ViewButtonColor extends ViewCheckbox
   {
      
      private var _source:gCheckboxColor = new gCheckboxColor();
      
      public function ViewButtonColor(param1:IController)
      {
         super(param1,this._source);
      }
      
      public function set color(param1:uint) : void
      {
         UtilsDisplayObject.setColor(this._source.viewColor,param1);
      }
      
      override public function set isChecked(param1:Boolean) : void
      {
         if(this.isChecked == param1)
         {
            return;
         }
         super.isChecked = param1;
         this._source.viewEffect.visible = !param1;
      }
      
      public function set enableSelection(param1:Boolean) : void
      {
         this._source.buttonMode = param1;
         if(param1)
         {
            this.handleEvents(true,false,true,true,true);
         }
         else
         {
            this.handleEvents();
         }
      }
   }
}

