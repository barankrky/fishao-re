package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.*;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _9c109e884a25c4cf32fe34f1 extends IN_GAME_LOADING implements _31d36aa7605a30cd1efdb917
   {
      
      protected var _showPercents:Boolean = true;
      
      protected var _showProgress:Boolean = true;
      
      protected var _showBubbles:Boolean = true;
      
      public function _9c109e884a25c4cf32fe34f1()
      {
         super();
      }
      
      public function set percent(param1:Number) : void
      {
         var _loc2_:int = int(param1 * (0x1CE7198C ^ 0x743EA8E6 ^ 0x61B6A169 ^ 0x096F1067) + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勊劤刃努刻剖动刜劦劳勦剹刲劍剅勂券剝勊勣劰勲刑効","勏勂制勯勣刚劋刓剄劈劚勩刖劎削劋"));
         progressBar.progressText.text = _loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刟勱剗刵劕刣剈削刖劌","勘刐劣券剳刾劊劎勪勳劌劈勦勌剥加");
         progressBar.gotoAndStop(_loc2_);
         this._f1eb68c59055aa95f2ea4ddf();
      }
      
      public function _2381b76b21d53e8dc993bc29() : void
      {
         this._6ef1bb2d05caae9598adbae8();
         this.x = int(Config.SCREEN_WIDTH / (-1513694637 ^ -1160412651 ^ -641676803 ^ -959213127));
         this.y = int(Config.SCREEN_HEIGHT / (0x672689BD ^ -1599617544 ^ -829986161 ^ 0x090626C8));
      }
      
      private function _6ef1bb2d05caae9598adbae8() : void
      {
         with(graphics)
         {
            clear();
            beginFill(0x73628C9E ^ 0x369096F9 ^ -1765802347 ^ -748034063,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捹揳挷挈挭掯挎掕挌捛掼捋措揾挠掄挣握掀揳掿指挋揧","挀挵掶掇挦掳捸挗捪掏挀揼援揫捙揥"));
            drawRect(-Config.SCREEN_WIDTH / (-66143552 ^ -1430735971 ^ -957316467 ^ -1874424878),-Config.SCREEN_HEIGHT / (-444332639 ^ 0x3B5AB000 ^ 0x4746CBBE ^ -1718059491),Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
            endFill();
         }
      }
      
      public function _c303a207e4e800ce00f7bd66() : void
      {
         UtilsTextField.setBoldFont(label);
         this.label.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捩捌挸揲捗挦掄捄捻揤掎揕掏揽捕捧掄捛揂揁挤捘","授挴掖控揎揿掾捌挪挸挥掂揕掓掞挿"));
      }
      
      private function _f1eb68c59055aa95f2ea4ddf() : void
      {
         progressBar.progressText.visible = this._showPercents && this._showProgress;
         progressBar.visible = this._showProgress;
         bubbles.visible = this._showBubbles;
      }
      
      public function destroy() : void
      {
      }
   }
}

