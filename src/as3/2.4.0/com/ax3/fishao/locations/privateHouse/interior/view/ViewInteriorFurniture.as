package com.ax3.fishao.locations.privateHouse.interior.view
{
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemRotation;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   
   public class ViewInteriorFurniture extends ViewInteriorItem
   {
      
      private var _back:ViewInteriorFurnitureRotation;
      
      private var _front:ViewInteriorFurnitureRotation;
      
      private var _left:ViewInteriorFurnitureRotation;
      
      private var _right:ViewInteriorFurnitureRotation;
      
      private var _currentRotation:String;
      
      private var _currentView:ViewInteriorFurnitureRotation;
      
      public function ViewInteriorFurniture(param1:IController)
      {
         super(param1);
         this.init();
      }
      
      public function get currentRotation() : String
      {
         return this._currentRotation;
      }
      
      public function set currentRotation(param1:String) : void
      {
         this._currentRotation = param1;
         this.updateCurrentView();
      }
      
      public function get currentView() : ViewInteriorFurnitureRotation
      {
         return this._currentView;
      }
      
      public function set handleClick(param1:Boolean) : void
      {
         this._back.handleClick = param1;
         this._front.handleClick = param1;
         this._left.handleClick = param1;
         this._right.handleClick = param1;
      }
      
      public function set filter(param1:String) : void
      {
         this._currentView.filter = param1;
      }
      
      public function get widthMax() : Number
      {
         return Math.max(this._back.width,this._front.width,this._left.width,this._right.width);
      }
      
      private function init() : void
      {
         this._back = new ViewInteriorFurnitureRotation(controller,EInteriorItemRotation.EIIR_BACK);
         this._front = new ViewInteriorFurnitureRotation(controller,EInteriorItemRotation.EIIR_FRONT);
         this._left = new ViewInteriorFurnitureRotation(controller,EInteriorItemRotation.EIIR_LEFT);
         this._right = new ViewInteriorFurnitureRotation(controller,EInteriorItemRotation.EIIR_RIGHT);
      }
      
      override public function load() : void
      {
         this._back.load();
         this._front.load();
         this._left.load();
         this._right.load();
      }
      
      override public function addOnLayer(param1:DisplayObjectContainer) : void
      {
         this._back.addOnLayer(param1);
         this._front.addOnLayer(param1);
         this._left.addOnLayer(param1);
         this._right.addOnLayer(param1);
      }
      
      override public function removeFromLayer(param1:DisplayObjectContainer) : void
      {
         this._back.removeFromLayer(param1);
         this._front.removeFromLayer(param1);
         this._left.removeFromLayer(param1);
         this._right.removeFromLayer(param1);
      }
      
      private function updateCurrentView() : void
      {
         this._back.hide();
         this._front.hide();
         this._left.hide();
         this._right.hide();
         switch(this._currentRotation)
         {
            case EInteriorItemRotation.EIIR_BACK:
               this._currentView = this._back;
               break;
            case EInteriorItemRotation.EIIR_FRONT:
               this._currentView = this._front;
               break;
            case EInteriorItemRotation.EIIR_LEFT:
               this._currentView = this._left;
               break;
            case EInteriorItemRotation.EIIR_RIGHT:
               this._currentView = this._right;
         }
         this._currentView.show();
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._currentView.show();
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         this._currentView.hide();
      }
      
      public function replaceIsoBitmap() : void
      {
         this._back.replaceIsoBitmap();
         this._front.replaceIsoBitmap();
         this._left.replaceIsoBitmap();
         this._right.replaceIsoBitmap();
      }
   }
}

