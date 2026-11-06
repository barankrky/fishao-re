package com.ax3.fishao.view.wrappers.impl.profile.prizesPanel
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.profile.prizesPanelData.ETrophyType;
   import com.ax3.fishao.model.profile.prizesPanelData.UserPrizeData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.IPagesElement;
   import com.ax3.utils.SetBitmapInContainer;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class ProfilePrizeItemWrapper extends Sprite implements IAssetWrapper, IPagesElement, IMovieListElement
   {
      
      private static const BITMAP_WIDTH:int = 100;
      
      private static const BITMAP_HEIGHT:int = 100;
      
      private static const BITMAP_CONTAINER_WIDTH:int = 120;
      
      private static const BITMAP_CONTAINER_HEIGHT:int = 120;
      
      private var _child:MovieClip;
      
      private var _imageContainer:MovieClip;
      
      private var _serverNameText:TextField;
      
      private var _elementData:UserPrizeData;
      
      private var _toolTipTarget:ToolTipTargetMovieClip;
      
      public function ProfilePrizeItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._toolTipTarget = new ToolTipTargetMovieClip();
         this._toolTipTarget.x = 0;
         this._toolTipTarget.y = 0;
         this._toolTipTarget.graphics.beginFill(9461904,0);
         this._toolTipTarget.graphics.drawRect(0,0,120,120);
         this._toolTipTarget.graphics.endFill();
         this._child = MovieClip(param1);
         this._imageContainer = MovieClip(this._child.getChildByName("imageContainer"));
         this._serverNameText = TextField(this._child.getChildByName("serverNameText"));
         this._child.stop();
         if(this._child.parent != null)
         {
            this._child.parent.addChild(this);
         }
         addChild(this._child);
         addChild(this._toolTipTarget);
      }
      
      public function set active(param1:Boolean) : void
      {
         if(param1)
         {
            this._child.gotoAndStop(2);
         }
         else
         {
            this._child.gotoAndStop(1);
         }
      }
      
      public function set elementData(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         this._elementData = UserPrizeData(param1);
         this.imageUrl = this._elementData.imageUrl;
         var _loc5_:String = this._elementData.timeReceivedAgo < 60 ? I18n.get("rightNow") : I18n.get("TimeAgo").replace("#TIME#",I18n.formatTimestampWithMonth(this._elementData.timeReceivedAgo));
         switch(this._elementData.type)
         {
            case ETrophyType.ETT_TOURNAMENT_BOAT_ON_SEA:
            case ETrophyType.ETT_TOURNAMENT_LAKE_RUN:
            case ETrophyType.ETT_TOURNAMENT_RACE:
            case ETrophyType.ETT_TOURNAMENT_MORAY:
               _loc2_ = I18n.get(this._elementData.type);
               _loc2_ += "\n" + _loc5_;
               if(this._elementData.tournamentDifficulty != "" && this._elementData.tournamentMembersCount != -1)
               {
                  _loc3_ = I18n.get(EStringType.EST_PROFILE_PRIZE_TOURNAMENT_DESCRIPTION_TEMPLATE);
                  _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_DIFFICULTY,I18n.get(EStringType.EST_TOURNAMENT_DIFFICULTY.replace(EStringTypeStubs.ESTS_DIFFICULTY,this._elementData.tournamentDifficulty)));
                  _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_COUNT,this._elementData.tournamentMembersCount.toString());
                  _loc2_ += "\n" + _loc3_;
               }
               else if(this._elementData.server != "")
               {
                  _loc2_ += "\n" + I18n.get("in_world").replace("#SERVER_NAME#",this._elementData.server);
               }
               break;
            case ETrophyType.ETT_MONTH_BIGGEST_FISH:
               _loc2_ = I18n.get(this._elementData.type).replace("#FISH#",I18n.get("fish_" + this._elementData.fishId));
               _loc2_ += "\n" + I18n.get("inventory_size") + " " + I18n.formatDistance(this._elementData.fishLength);
               _loc4_ = this._elementData.date.split("-");
               _loc2_ += "\n" + I18n.get("month_game_" + _loc4_[1]) + " " + _loc4_[0];
               _loc2_ += "\n" + _loc5_;
               break;
            case ETrophyType.ETT_COLLECTION_BADGE:
               _loc2_ = I18n.get("collection_badge_" + this._elementData.collectionId);
               _loc2_ += "\n" + _loc5_;
               break;
            case ETrophyType.ETT_FISHING_LICENSE:
               _loc2_ = I18n.get(this._elementData.type);
               _loc2_ += "\n" + _loc5_;
               break;
            default:
               Debug.assert(false,"Unsupported ETrophyType on set elementData of ProfilePrizeItemWrapper: " + this._elementData.type);
         }
         this._toolTipTarget.tooltipConfig = {"text":_loc2_};
      }
      
      private function set imageUrl(param1:String) : void
      {
         SetBitmapInContainer.loadBitmapInContainer(param1,this._imageContainer,app.resourceManager,BITMAP_WIDTH,BITMAP_HEIGHT,BITMAP_CONTAINER_WIDTH,BITMAP_CONTAINER_HEIGHT);
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1;
      }
   }
}

