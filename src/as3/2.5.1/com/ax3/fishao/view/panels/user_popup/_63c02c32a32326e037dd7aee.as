package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.utils.removeFromParent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _63c02c32a32326e037dd7aee extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _29064840a08c00bb20347d3f:DisplayObjectContainer = new Sprite();
      
      private var _f73067eebd18cddaef77d7f8:_0c798a15bb79583ca8a2afa4;
      
      private var _8466f555ab622968027e1ea5:_df096bac6ba6a98f642d7173;
      
      private var _0f362d858e57eb0489e798e0:_39b7ed028860dccb673b513c;
      
      public function _63c02c32a32326e037dd7aee(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._29064840a08c00bb20347d3f);
         this.init();
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         this._8466f555ab622968027e1ea5.isGuest = param1;
         this._f73067eebd18cddaef77d7f8.isGuest = param1;
      }
      
      public function set userInClub(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = this._f73067eebd18cddaef77d7f8.source;
         var _loc3_:DisplayObject = this._8466f555ab622968027e1ea5.source;
         if(param1)
         {
            removeFromParent(_loc2_);
            _d3d70238b67f17bb35699a2c._3912bf0c77a5912362297103(_loc3_,this._29064840a08c00bb20347d3f);
         }
         else
         {
            removeFromParent(_loc3_);
            _d3d70238b67f17bb35699a2c._3912bf0c77a5912362297103(_loc2_,this._29064840a08c00bb20347d3f);
         }
         this._0f362d858e57eb0489e798e0 = param1 ? this._8466f555ab622968027e1ea5 : this._f73067eebd18cddaef77d7f8;
      }
      
      public function set login(param1:String) : void
      {
         this._8466f555ab622968027e1ea5.login = param1;
         this._f73067eebd18cddaef77d7f8.login = param1;
      }
      
      public function set level(param1:int) : void
      {
         this._8466f555ab622968027e1ea5.level = param1;
         this._f73067eebd18cddaef77d7f8.level = param1;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._8466f555ab622968027e1ea5.emblemID = param1;
      }
      
      public function set clubName(param1:String) : void
      {
         this._8466f555ab622968027e1ea5.clubName = param1;
      }
      
      public function set buttonCloseVisible(param1:Boolean) : void
      {
         this._f73067eebd18cddaef77d7f8.buttonClose.visible = param1;
         this._8466f555ab622968027e1ea5.buttonClose.visible = param1;
      }
      
      public function set buttonPmVisible(param1:Boolean) : void
      {
         this._f73067eebd18cddaef77d7f8.buttonPmVisible = param1;
         this._8466f555ab622968027e1ea5.buttonPmVisible = param1;
      }
      
      public function get currentView() : _39b7ed028860dccb673b513c
      {
         return this._0f362d858e57eb0489e798e0;
      }
      
      private function init() : void
      {
         this.source.visible = false;
         this.source.alpha = -355810489 ^ -733742616 ^ 0x17CDDE3D ^ 0x2944E492;
         this._29064840a08c00bb20347d3f.mouseChildren = true;
         this._f73067eebd18cddaef77d7f8 = new _0c798a15bb79583ca8a2afa4(controller);
         this._8466f555ab622968027e1ea5 = new _df096bac6ba6a98f642d7173(controller);
      }
   }
}

