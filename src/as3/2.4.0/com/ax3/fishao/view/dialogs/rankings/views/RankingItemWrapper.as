package com.ax3.fishao.view.dialogs.rankings.views
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.rankings.model.RankingItemData;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.IPagesElement;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class RankingItemWrapper extends Sprite implements IAssetWrapper, IPagesElement
   {
      
      private static const USER_NAME_SELECT_COLOR:Number = 16777215;
      
      private var _orderNumber:TextField;
      
      private var _userName:TextField;
      
      private var _highestLevel:TextField;
      
      private var _selector:DisplayObject;
      
      private var _icon:MovieClip;
      
      private var _child:MovieClip;
      
      private var _entity:RankingItemData;
      
      public function RankingItemWrapper()
      {
         super();
      }
      
      public function set select(param1:Boolean) : void
      {
         if(param1)
         {
            this._selector.visible = true;
            this._orderNumber.filters = [];
            if(this._highestLevel != null)
            {
               this._highestLevel.filters = [];
            }
            this._userName.filters = [];
            this._userName.textColor = USER_NAME_SELECT_COLOR;
         }
         else
         {
            this._selector.visible = false;
         }
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = MovieClip(param1);
         this._orderNumber = this._child.getChildByName("orderNumber") as TextField;
         this._userName = this._child.getChildByName("userName") as TextField;
         this._highestLevel = this._child.getChildByName("amount") as TextField;
         this._selector = this._child.getChildByName("selector");
         this._icon = this._child.getChildByName("icon") as MovieClip;
         this._child.stop();
         if(this._child.parent != null)
         {
            this._child.parent.addChild(this);
         }
         addChild(this._child);
      }
      
      public function set elementData(param1:Object) : void
      {
         this._entity = RankingItemData(param1);
         this._orderNumber.text = int(this._entity.position) >= 999999 ? "..." : this._entity.position.toString();
         this._userName.text = this._entity.login;
         if(this._highestLevel != null)
         {
            this._highestLevel.text = this._entity.score;
         }
         this.select = this._entity.login.toLowerCase() == app.user.username.toLowerCase();
         if(this._icon != null)
         {
            this._icon.gotoAndStop(this._entity.type + 1);
         }
      }
   }
}

