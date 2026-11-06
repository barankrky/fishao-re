package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.model.DailyQuestModel;
   import com.ax3.fishao.model.DailyQuestTypes;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.removeAllChildren;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class DailyQuestDialogItemWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      private static const BITMAP_WIDTH:int = 54;
      
      private static const BITMAP_HEIGHT:int = 54;
      
      private var _nameLabel:TextField;
      
      private var _img:DisplayObjectContainer;
      
      private var _progress:MovieClip;
      
      private var _progressLabel:TextField;
      
      private var _progressPaint:DisplayObject;
      
      private var _progressPaintComplete:DisplayObject;
      
      private var _progressPaintOriginWidth:Number;
      
      private var _hitRect:Sprite;
      
      public function DailyQuestDialogItemWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         this._nameLabel = TextField(DisplayObjectContainer(_child).getChildByName("nameLabel"));
         this._progressLabel = TextField(DisplayObjectContainer(_child).getChildByName("progressLabel"));
         this._img = DisplayObjectContainer(DisplayObjectContainer(_child).getChildByName("img"));
         this._progress = MovieClip(DisplayObjectContainer(_child).getChildByName("progress"));
         this._progressPaint = DisplayObject(this._progress.getChildByName("paint"));
         this._progressPaintComplete = DisplayObject(this._progress.getChildByName("paintComplete"));
         this._hitRect = Sprite(DisplayObjectContainer(_child).getChildByName("hitRect"));
         this._progressPaintOriginWidth = this._progressPaint.width;
         this._progressPaintComplete.visible = false;
      }
      
      public function setData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         _loc2_ = int(param1[DailyQuestModel.QUEST_ID]);
         if(_loc2_ == DailyQuestTypes.CATCH_FEW_FISHNAME)
         {
            _loc5_ = String(param1[DailyQuestModel.QUEST_REQUIREMENT]).split(",");
            _loc6_ = String(param1[DailyQuestModel.QUEST_CONDITION]).split(",");
            _loc3_ = int(_loc5_[1]);
            _loc4_ = int(_loc6_[1]);
         }
         else if(_loc2_ == DailyQuestTypes.CATCH_FISHNAME || _loc2_ == DailyQuestTypes.CATCH_FISH_MORE)
         {
            _loc3_ = 1;
            _loc4_ = int(param1[DailyQuestModel.QUEST_CONDITION]);
         }
         else if(_loc2_ == DailyQuestTypes.CATCH_FISH_LENGTH)
         {
            _loc5_ = String(param1[DailyQuestModel.QUEST_REQUIREMENT]).split(",");
            _loc3_ = 1;
            _loc4_ = int(param1[DailyQuestModel.QUEST_CONDITION]);
         }
         else
         {
            _loc3_ = int(param1[DailyQuestModel.QUEST_REQUIREMENT]);
            _loc4_ = int(param1[DailyQuestModel.QUEST_CONDITION]);
         }
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         switch(_loc2_)
         {
            case DailyQuestTypes.CATCH_FISHES:
            case DailyQuestTypes.COLLECT_SHELLS:
            case DailyQuestTypes.EARN_EXP:
            case DailyQuestTypes.COLLECT_FISHBONES:
               this._nameLabel.text = I18n.get("dailyQuestTitle_" + _loc2_).replace("#NUMBER#",_loc3_);
               break;
            case DailyQuestTypes.CATCH_FISHNAME:
               _loc7_ = int(param1[DailyQuestModel.QUEST_REQUIREMENT]);
               this._nameLabel.text = I18n.get("dailyQuestTitle_" + _loc2_).replace("#FISH_NAME#",I18n.get("fish_" + _loc7_));
               break;
            case DailyQuestTypes.CATCH_FEW_FISHNAME:
               _loc7_ = int(_loc5_[0]);
               this._nameLabel.text = I18n.get("dailyQuestTitle_" + _loc2_).replace("#FISH_NAME#",I18n.get("fish_" + _loc7_));
               break;
            case DailyQuestTypes.CATCH_FISH_LENGTH:
               _loc8_ = I18n.get("dailyQuestTitle_" + _loc2_).replace("#MIN#",I18n.formatDistanceWithoutUnit(_loc5_[0])).replace("#MAX#",I18n.formatDistanceWithoutUnit(_loc5_[1]));
               if(I18n.unitName == I18n.UNIT_NAME_CM)
               {
                  _loc8_ += " " + I18n.get("cm");
               }
               this._nameLabel.text = _loc8_;
               break;
            case DailyQuestTypes.CATCH_FISH_MORE:
               _loc8_ = I18n.get("dailyQuestTitle_" + _loc2_).replace("#100cm+#",I18n.formatDistanceWithoutUnit(100)) + "+ ";
               if(I18n.unitName == I18n.UNIT_NAME_CM)
               {
                  _loc8_ += I18n.get("cm");
               }
               this._nameLabel.text = _loc8_;
               break;
            default:
               this._nameLabel.text = I18n.get("dailyQuestTitle_" + _loc2_);
         }
         if(this._nameLabel.numLines > 1)
         {
            this._nameLabel.y = 12;
            this._progress.y = 51;
         }
         else
         {
            this._nameLabel.y = 28;
            this._progress.y = 43;
         }
         if(_loc3_ <= _loc4_)
         {
            this._progressPaint.width = this._progressPaintOriginWidth;
            this._progressPaint.visible = false;
            this._progressPaintComplete.visible = true;
         }
         else
         {
            this._progressPaint.visible = true;
            this._progressPaintComplete.visible = false;
            _loc9_ = _loc4_ / _loc3_;
            this._progressPaint.width = this._progressPaintOriginWidth * _loc9_;
         }
         if(_loc4_ > _loc3_)
         {
            _loc4_ = _loc3_;
         }
         this._progressLabel.text = _loc4_ + "/" + _loc3_;
         var _loc10_:ScaledBitmap = new ScaledBitmap();
         _loc10_.width = BITMAP_WIDTH;
         _loc10_.height = BITMAP_HEIGHT;
         app.resourceManager.replaceBitmapDataFromURL(_loc10_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getImageDailyQuestURL(_loc2_)));
         this.itemBitmap = _loc10_;
      }
      
      private function set itemBitmap(param1:Bitmap) : void
      {
         removeAllChildren(this._img);
         this._img.addChild(param1);
         param1.x = (BITMAP_WIDTH - param1.width) / 2;
         param1.y = (BITMAP_HEIGHT - param1.height) / 2;
      }
   }
}

