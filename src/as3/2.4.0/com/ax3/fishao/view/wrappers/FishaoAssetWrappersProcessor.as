package com.ax3.fishao.view.wrappers
{
   import com.ax3.display.wrappers.AssetWrappersProcessor;
   import com.ax3.fishao.control.managers.FontManager;
   import flash.display.DisplayObjectContainer;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class FishaoAssetWrappersProcessor extends AssetWrappersProcessor
   {
      
      private var _applicationDomain:ApplicationDomain;
      
      public function FishaoAssetWrappersProcessor(param1:ApplicationDomain)
      {
         super();
         this._applicationDomain = param1;
      }
      
      override protected function hasDefinition(param1:String) : Boolean
      {
         return this._applicationDomain.hasDefinition(param1);
      }
      
      override protected function getDefinition(param1:String) : Class
      {
         return this._applicationDomain.getDefinition(param1) as Class;
      }
      
      override protected function fontNameMap(param1:String) : String
      {
         return FontManager.fontNameMap[param1];
      }
      
      override protected function processTextField(param1:TextField) : void
      {
         var _loc2_:TextField = null;
         var _loc3_:int = 0;
         _loc2_ = new TextField();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.width = param1.width;
         _loc2_.text = "hello!234";
         _loc2_.embedFonts = true;
         _loc2_.antiAliasType = param1.antiAliasType;
         _loc2_.wordWrap = param1.wordWrap;
         _loc2_.multiline = param1.multiline;
         _loc2_.selectable = param1.selectable;
         var _loc4_:TextFormat = param1.defaultTextFormat;
         var _loc5_:TextFormat = new TextFormat();
         _loc5_.font = this.fontNameMap(_loc4_.font);
         _loc5_.size = _loc4_.size;
         _loc2_.defaultTextFormat = _loc5_;
         _loc2_.setTextFormat(_loc5_);
         var _loc6_:DisplayObjectContainer = param1.parent;
         if(_loc6_ != null)
         {
            _loc3_ = _loc6_.getChildIndex(param1);
            _loc6_.removeChild(param1);
            _loc6_.addChildAt(_loc2_,_loc3_);
         }
      }
   }
}

