package com.ax3.fishao.view.dialogs
{
   import com.ax3.fishao.utils.I18n;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.setTimeout;
   
   public class TopPlayersSwfDialog extends TopPlayersSwfDialogAsset
   {
      
      public function TopPlayersSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         title.text = I18n.getUpper("top_10_players");
         playerHeader.text = I18n.get("top_10_player_header");
         fishHeader.text = I18n.get("top_10_fish_header");
         lengthHeader.text = I18n.get("top_10_length_header");
         timeHeader.text = I18n.get("top_10_time_header");
      }
      
      public function setData(param1:Array) : void
      {
         var _loc2_:int = 0;
         if(line1 == null)
         {
            setTimeout(this.setData,300,param1);
            return;
         }
         _loc2_ = 1;
         while(_loc2_ <= 10)
         {
            MovieClip(this["line" + _loc2_]).visible = false;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            MovieClip(this["line" + (_loc2_ + 1)]).visible = true;
            TextField(MovieClip(this["line" + (_loc2_ + 1)]).getChildByName("placeNumber")).text = String(_loc2_ + 1);
            TextField(MovieClip(this["line" + (_loc2_ + 1)]).getChildByName("playerName")).text = param1[_loc2_].login;
            TextField(MovieClip(this["line" + (_loc2_ + 1)]).getChildByName("fishName")).text = I18n.get("fish_" + param1[_loc2_].fishId);
            TextField(MovieClip(this["line" + (_loc2_ + 1)]).getChildByName("fishSize")).text = I18n.formatDistance(param1[_loc2_].length);
            TextField(MovieClip(this["line" + (_loc2_ + 1)]).getChildByName("time")).text = I18n.formatShortTimestamp(param1[_loc2_].timeAgo);
            _loc2_++;
         }
      }
   }
}

