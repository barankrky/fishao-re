package com.ax3.fishao.view.dialogs.simple
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.events.MouseEvent;
   
   public class _4277f040b60ee9d5b8ce0a48 extends _8c33bf7141354bd3dae6c384
   {
      
      private var _89d8c31f03e864e5d1007c94:gDialogSimpleWithTwoButtons = new gDialogSimpleWithTwoButtons();
      
      private var _55681b7cd3356da5b635a3eb:FrameButtonWrapper;
      
      private var _94d0cc5de4cadd378ca494c8:FrameButtonWrapper;
      
      private var _645b649f0619478014eb8f9a:Function;
      
      private var _dad79531443fd9a79e7c0bdb:Function;
      
      private var _f310233c0b616e54b01d950d:Boolean;
      
      public function _4277f040b60ee9d5b8ce0a48()
      {
         super(this._89d8c31f03e864e5d1007c94);
         this.init();
      }
      
      public function get buttonActionLeft() : FrameButtonWrapper
      {
         return this._55681b7cd3356da5b635a3eb;
      }
      
      public function get buttonActionRight() : FrameButtonWrapper
      {
         return this._94d0cc5de4cadd378ca494c8;
      }
      
      public function set callbackButtonLeft(param1:Function) : void
      {
         this._645b649f0619478014eb8f9a = param1;
      }
      
      public function set callbackButtonRight(param1:Function) : void
      {
         this._dad79531443fd9a79e7c0bdb = param1;
      }
      
      override protected function _4f254116765eb1a39d6712be(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(this._f310233c0b616e54b01d950d)
         {
            return _loc3_;
         }
         switch(param1)
         {
            case this._55681b7cd3356da5b635a3eb:
               §§push(-497810343 ^ 0x6B16E5D0 ^ 0x1A387E08 ^ -1820680319);
               break;
            case this._94d0cc5de4cadd378ca494c8:
               §§push(-1574747581 ^ 0x5364D5B4 ^ 0x1D672E16 ^ -333399584);
               break;
            default:
               §§push(-197826734 ^ -2045074562 ^ -831323509 ^ -1134770523);
         }
         switch(§§pop())
         {
            case 0:
               if(this._645b649f0619478014eb8f9a != null)
               {
                  this._645b649f0619478014eb8f9a();
               }
               this._ba7fe333230ac51496d90cb8();
               _loc3_ = true;
               break;
            case 1:
               if(this._dad79531443fd9a79e7c0bdb != null)
               {
                  this._dad79531443fd9a79e7c0bdb();
               }
               this._ba7fe333230ac51496d90cb8();
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      override protected function _ba7fe333230ac51496d90cb8() : void
      {
         this._f310233c0b616e54b01d950d = true;
         super._ba7fe333230ac51496d90cb8();
      }
      
      private function init() : void
      {
         this._89d8c31f03e864e5d1007c94.buttonClose.buttonMode = true;
         this._89d8c31f03e864e5d1007c94.buttonClose.useHandCursor = true;
         this._55681b7cd3356da5b635a3eb = new FrameButtonWrapper();
         this._55681b7cd3356da5b635a3eb.process(this._89d8c31f03e864e5d1007c94.buttonActionLeft);
         this._55681b7cd3356da5b635a3eb.handler = function(param1:MouseEvent):void
         {
            _4f254116765eb1a39d6712be(_55681b7cd3356da5b635a3eb,param1);
         };
         this._94d0cc5de4cadd378ca494c8 = new FrameButtonWrapper();
         this._94d0cc5de4cadd378ca494c8.process(this._89d8c31f03e864e5d1007c94.buttonActionRight);
         this._94d0cc5de4cadd378ca494c8.handler = function(param1:MouseEvent):void
         {
            _4f254116765eb1a39d6712be(_94d0cc5de4cadd378ca494c8,param1);
         };
      }
   }
}

