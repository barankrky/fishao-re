package com.ax3.fishao.display.settings
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ViewArrow extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelCached:BitmapData;
      
      private var _stringType:String;
      
      public function ViewArrow(param1:IController, param2:DisplayObjectContainer, param3:String)
      {
         this._source = param2;
         this._stringType = param3;
         super(param1,this._source);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Bitmap = null;
         _loc1_ = Debug.assertProperty(this._source,"arrow",DisplayObjectContainer);
         var _loc3_:TextField = Debug.assertProperty(_loc1_,"label",TextField);
         var _loc4_:Number = _loc3_.textHeight;
         var _loc5_:TextFieldAutofitWrapper = new TextFieldAutofitWrapper(_loc3_);
         _loc5_.needCenteredText = false;
         _loc5_.text = I18n.get(this._stringType);
         _loc4_ -= _loc3_.textHeight;
         this._labelCached = new BitmapData(_loc3_.width,_loc3_.height,true,0);
         this._labelCached.draw(_loc3_);
         _loc2_ = new Bitmap(this._labelCached);
         _loc2_.smoothing = true;
         _loc2_.x = _loc3_.x;
         _loc2_.y = _loc3_.y + _loc4_;
         _loc2_.rotation = _loc3_.rotation;
         _loc3_.visible = false;
         _loc1_.addChild(_loc2_);
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         super.show(param1,param2);
         (this._source as MovieClip).gotoAndPlay(0);
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         super.hide(param1,param2);
         (this._source as MovieClip).gotoAndStop(0);
      }
      
      override public function cleanup() : void
      {
         this._labelCached.dispose();
         this._labelCached = null;
         super.cleanup();
      }
   }
}

