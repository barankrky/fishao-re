package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.worlds.WorldInfo;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class WorldListItemWrapper extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      private var _lamp:MovieClip;
      
      private var _count:TextField;
      
      private var _worldName:TextField;
      
      private var _button:FrameButtonWrapper;
      
      private var _handler:Function;
      
      private var _entity:WorldInfo;
      
      public function WorldListItemWrapper()
      {
         super();
      }
      
      private function onButtonClicked(param1:MouseEvent) : void
      {
         if(this._handler != null)
         {
            this._handler(this._entity);
            this._handler = null;
         }
      }
      
      public function set entity(param1:WorldInfo) : void
      {
         if(this._entity == param1)
         {
            return;
         }
         this._entity = param1;
         if(this._entity.enabled)
         {
            this._lamp.gotoAndStop(1);
            this._button.visible = true;
            this._count.text = this._entity.playersCount + "/" + this._entity.playersMax;
         }
         else
         {
            this._lamp.gotoAndStop(2);
            this._button.visible = false;
            this._count.text = this._entity.playersCount + "/" + this._entity.playersMax;
         }
         this._button.handler = this.onButtonClicked;
         this._worldName.text = param1.name;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._lamp = MovieClip(DisplayObjectContainer(param1).getChildByName("lamp"));
         this._count = TextField(DisplayObjectContainer(param1).getChildByName("count"));
         this._worldName = TextField(DisplayObjectContainer(param1).getChildByName("worldName"));
         this._button = new FrameButtonWrapper();
         var _loc2_:DisplayObject = DisplayObjectContainer(param1).getChildByName("start");
         this._button.process(_loc2_);
         this._button.label = I18n.getUpper("world_connect_button");
         addChild(param1);
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1;
      }
      
      public function setHandler(param1:Function) : void
      {
         this._handler = param1;
      }
      
      public function click() : void
      {
         this._button.click();
      }
   }
}

