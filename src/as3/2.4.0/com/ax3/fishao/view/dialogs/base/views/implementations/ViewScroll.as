package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.EScrollDirectionType;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class ViewScroll extends ViewBase
   {
      
      private static const INSTANCE_NAME_SCROLL_BODY:String = "body";
      
      private static const INSTANCE_NAME_SCROLL_BACKGROUND:String = "background";
      
      private var _source:DisplayObjectContainer;
      
      private var _body:DisplayObject;
      
      private var _background:DisplayObject;
      
      private var _position:Number;
      
      private var _bodySizeRelated:Number;
      
      private var _offset:Point;
      
      private var _scrollDirectionType:String;
      
      private var _moveSpace:Point;
      
      public function ViewScroll(param1:IController, param2:DisplayObjectContainer, param3:String)
      {
         this._scrollDirectionType = param3;
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set bodySizeRelated(param1:Number) : void
      {
         this._bodySizeRelated = limit(param1,0,1);
         this.updateBodySize();
      }
      
      public function set position(param1:Number) : void
      {
         this._position = limit(param1,0,1);
         this.updatePosition();
      }
      
      public function get position() : Number
      {
         return this._position;
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
         this.updateBodySize();
      }
      
      public function get moveSpace() : Number
      {
         var _loc1_:Number = 0;
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               _loc1_ = this._moveSpace.x;
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               _loc1_ = this._moveSpace.y;
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on updateBodySize method of ViewScroll: " + this._scrollDirectionType);
         }
         return _loc1_;
      }
      
      private function init() : void
      {
         this._body = Debug.assertProperty(this._source,INSTANCE_NAME_SCROLL_BODY);
         this._background = Debug.assertProperty(this._source,INSTANCE_NAME_SCROLL_BACKGROUND);
         this._background.alpha = 0.25;
         (this._background as Sprite).buttonMode = true;
         (this._background as Sprite).useHandCursor = true;
         this._offset = new Point();
         this._moveSpace = new Point();
         handleEvents(false,false,false,false,true);
      }
      
      private function updatePosition() : void
      {
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               this._body.x = this._offset.x + (this._background.width - this._offset.x * 2 - this._body.width) * this._position;
               this._body.y = this._background.y + this._offset.y;
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               this._body.x = this._background.x + this._offset.x;
               this._body.y = this._offset.y + (this._background.height - this._offset.y * 2 - this._body.height) * this._position;
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on updateBodySize method of ViewScroll: " + this._scrollDirectionType);
         }
      }
      
      private function updateBodySize() : void
      {
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               this._body.width = (this._background.width - this._offset.x * 2) * this._bodySizeRelated;
               this._body.height = this._background.height - this._offset.y * 2;
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               this._body.width = this._background.width - this._offset.x * 2;
               this._body.height = (this._background.height - this._offset.y * 2) * this._bodySizeRelated;
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on updateBodySize method of ViewScroll: " + this._scrollDirectionType);
         }
         this._moveSpace.x = this._background.width - this._offset.x * 2 - this._body.width;
         this._moveSpace.y = this._background.height - this._offset.y * 2 - this._body.height;
      }
   }
}

