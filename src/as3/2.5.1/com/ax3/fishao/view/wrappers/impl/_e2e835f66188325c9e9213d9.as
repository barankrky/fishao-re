package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   
   public class _e2e835f66188325c9e9213d9 extends _818ca771e56d1f99e60c15fc
   {
      
      protected var _contentWidth:Number;
      
      public function _e2e835f66188325c9e9213d9()
      {
         super();
      }
      
      public function get contentWidth() : Number
      {
         return this._contentWidth;
      }
      
      override protected function _22bd16959dba2e323cc80b96() : void
      {
         _scroll = new HScrollWrapper();
         _scroll.process((_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧劇勰创刅则刚剁劯勠刧初助劊剚剠勠刟到剬","剝刭剝勭勖剑刜勎刈別刀刵募刢剏劋")));
         _scroll.moveHandler = _a6ae8c4816dbd7123227833f;
      }
      
      override protected function get distanceForScrolling() : Number
      {
         return this._contentWidth - _content.scrollRect.width;
      }
      
      override protected function scrollTo(param1:int) : void
      {
         var _loc2_:Rectangle = null;
         if(param1 >= (-944988498 ^ 0x3FA509B0 ^ -1856309447 ^ 0x69536027) && param1 <= this.distanceForScrolling)
         {
            _loc2_ = _content.scrollRect;
            _loc2_.x = param1;
            _content.scrollRect = _loc2_;
         }
      }
      
      override public function _a270befba6c808194a3475ba() : void
      {
         _scroll.percent = 0x53098CC2 ^ -1507793508 ^ 0x5424641B ^ -1592980155;
         var _loc1_:Number = this.distanceForScrolling;
         if(_loc1_ > (-175378941 ^ -1644596097 ^ -636570591 ^ -1300484516))
         {
            _scroll.visible = true;
            _scroll.setHandlerSize(_content.scrollRect.width / this._contentWidth,0x729E7A43 ^ 0x302FFB07 ^ 0x135F25BD ^ 0x51EEA4ED);
         }
         else
         {
            _scroll.visible = false;
         }
      }
   }
}

