package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.control.ExtendedMovieList;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class _8f5be6bb2d46a58b428401e8 implements IAssetWrapper
   {
      
      private var _427ef0695cc166cbe153f23f:DisplayObject;
      
      private var _0c2e5ccdda6a1c15d1ccd30b:ExtendedMovieList;
      
      private var _fe1ff88a38e836c09226a971:Function;
      
      public function _8f5be6bb2d46a58b428401e8()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._427ef0695cc166cbe153f23f = param1;
      }
      
      public function _ad847eaed7ca239e8fdde3cd(param1:ExtendedMovieList, param2:Function = null) : void
      {
         if(this._0c2e5ccdda6a1c15d1ccd30b != null && this._0c2e5ccdda6a1c15d1ccd30b.parent != null)
         {
            this._0c2e5ccdda6a1c15d1ccd30b.parent.removeChild(this._0c2e5ccdda6a1c15d1ccd30b);
         }
         this._0c2e5ccdda6a1c15d1ccd30b = param1;
         this._fe1ff88a38e836c09226a971 = param2;
         DisplayObjectContainer(this._427ef0695cc166cbe153f23f).addChild(param1.getList(this._7a091cf66be056df5196fa77));
      }
      
      private function _7a091cf66be056df5196fa77(param1:MouseEvent) : void
      {
         var _loc2_:_d0a8af7675ce093102e12974 = _d0a8af7675ce093102e12974(param1.currentTarget);
         if(_d0a8af7675ce093102e12974.isBackgroundActiveFunction(_loc2_))
         {
            return;
         }
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item);
         this._0c2e5ccdda6a1c15d1ccd30b.clearBackground();
         _d0a8af7675ce093102e12974.showBackgroundFunction(_loc2_);
         if(this._fe1ff88a38e836c09226a971 != null)
         {
            this._fe1ff88a38e836c09226a971(_loc2_);
         }
      }
   }
}

