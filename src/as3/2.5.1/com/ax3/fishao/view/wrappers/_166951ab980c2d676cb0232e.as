package com.ax3.fishao.view.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.AssetWrappersProcessor;
   import com.ax3.fishao.control.managers._0dea9d20559cb8ec5bb639be;
   import flash.display.DisplayObjectContainer;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _166951ab980c2d676cb0232e extends AssetWrappersProcessor
   {
      
      private var _2bf3031160fa9fb7de5720b7:ApplicationDomain;
      
      public function _166951ab980c2d676cb0232e(param1:ApplicationDomain)
      {
         super();
         this._2bf3031160fa9fb7de5720b7 = param1;
      }
      
      override protected function hasDefinition(param1:String) : Boolean
      {
         return this._2bf3031160fa9fb7de5720b7.hasDefinition(param1);
      }
      
      override protected function getDefinition(param1:String) : Class
      {
         return this._2bf3031160fa9fb7de5720b7.getDefinition(param1) as Class;
      }
      
      override protected function fontNameMap(param1:String) : String
      {
         return _0dea9d20559cb8ec5bb639be.fontNameMap[param1];
      }
      
      override protected function processTextField(param1:TextField) : void
      {
         var _loc2_:TextField = null;
         var _loc3_:int = -747520904 ^ 0x3FB61F66 ^ 0x6766B7A2 ^ -1952377668;
         _loc2_ = new TextField();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.width = param1.width;
         _loc2_.text = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挃挎捆捊掇挕控推挚揱挗揿挖挴挤揪捁掽捙捖挊掵掰揰捹插","捘挟挮掖推揥挖揾揯揢挽掽掩提捴掶");
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

