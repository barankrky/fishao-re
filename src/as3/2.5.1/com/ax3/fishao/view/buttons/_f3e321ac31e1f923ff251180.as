package com.ax3.fishao.view.buttons
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class _f3e321ac31e1f923ff251180 extends FrameBaseButton
   {
      
      private var _20ce36ff5ebad55016294b88:MovieClip;
      
      public function _f3e321ac31e1f923ff251180(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         _asset = MovieClip(param1.asset);
         this._20ce36ff5ebad55016294b88 = _asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勖勭劭剒勛劃劗勩剧劎劼刨剛刃刳劗劾剁勎勪劫刣劗刐刌勘剬刟","劜劔刁勨勩剕勷劈剃勊剁剦剶剫刾剂")) as MovieClip;
         super(param1,param2);
      }
      
      override public function set label(param1:String) : void
      {
         var _loc2_:TextFormat = null;
         if(_labelField != null)
         {
            _loc2_ = _labelField.getTextFormat();
            _labelField.text = param1;
            while(_labelField.textWidth > _labelField.width)
            {
               _loc2_.size = uint(_loc2_.size) - 1;
               _labelField.defaultTextFormat = _loc2_;
               _labelField.setTextFormat(_loc2_);
            }
            _labelField.autoSize = TextFieldAutoSize.CENTER;
            _labelField.y = (this._20ce36ff5ebad55016294b88.height - _labelField.height) / (-1328169047 ^ 0x138690F6 ^ 0x38CDEA48 ^ -1684093675);
         }
      }
      
      override protected function updateGivenState() : void
      {
         super.updateGivenState();
         _asset.gotoAndStop(_state.name);
         this._20ce36ff5ebad55016294b88.gotoAndStop(_state.name);
      }
   }
}

