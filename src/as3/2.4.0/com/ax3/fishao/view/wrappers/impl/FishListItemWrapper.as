package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.view.dialogs.fishes.model.FishUserInfo;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class FishListItemWrapper extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      public var fishName:TextField;
      
      public var isActive:Boolean = false;
      
      public var fishInfo:FishInfoVO;
      
      public var userCaughtFish:FishUserInfo;
      
      public function FishListItemWrapper()
      {
         super();
      }
      
      public static function showBackgroundFunction(param1:FishListItemWrapper) : void
      {
         MovieClip(param1.getChildByName("fishButton")).gotoAndStop(2);
      }
      
      public static function clearBackgroundFunction(param1:FishListItemWrapper) : void
      {
         MovieClip(param1.getChildByName("fishButton")).gotoAndStop(1);
      }
      
      public static function isBackgroundActiveFunction(param1:FishListItemWrapper) : Boolean
      {
         var _loc2_:DisplayObject = param1.getChildByName("fishButton");
         var _loc3_:int = MovieClip(_loc2_).currentFrame;
         return _loc3_ == 2;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this.fishName = TextField(DisplayObjectContainer(param1).getChildByName("fishName"));
         this.fishName.mouseEnabled = false;
         param1.name = "fishButton";
         addChild(param1);
      }
      
      public function setData(param1:FishInfoVO, param2:FishUserInfo) : void
      {
         this.fishInfo = param1;
         this.userCaughtFish = param2;
         this.isActive = param2 != null;
         var _loc3_:TextFormat = this.fishName.defaultTextFormat;
         _loc3_.bold = this.isActive;
         _loc3_.color = param2 ? _loc3_.color : 11184810;
         this.fishName.defaultTextFormat = _loc3_;
         this.fishName.setTextFormat(_loc3_);
         this.fishName.text = param1.displayName;
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1;
      }
   }
}

