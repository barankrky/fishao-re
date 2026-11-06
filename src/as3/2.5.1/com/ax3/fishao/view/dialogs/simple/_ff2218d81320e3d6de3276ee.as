package com.ax3.fishao.view.dialogs.simple
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.events.MouseEvent;
   
   public class _ff2218d81320e3d6de3276ee extends _8c33bf7141354bd3dae6c384
   {
      
      private var _6d187ba9c14485f6cad0c551:gDialogSimpleWithButton = new gDialogSimpleWithButton();
      
      private var _8b7559d1c15f4120cfea4be6:FrameButtonWrapper;
      
      private var _653add188f22a36ded3e23d4:Function;
      
      public function _ff2218d81320e3d6de3276ee()
      {
         super(this._6d187ba9c14485f6cad0c551);
         this.init();
      }
      
      public function set callback(param1:Function) : void
      {
         this._653add188f22a36ded3e23d4 = param1;
      }
      
      public function get buttonAction() : FrameButtonWrapper
      {
         return this._8b7559d1c15f4120cfea4be6;
      }
      
      override protected function _4f254116765eb1a39d6712be(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         var _loc4_:Object = param1;
         switch(this._8b7559d1c15f4120cfea4be6 === _loc4_ ? -412340140 ^ -243002014 ^ -1796759020 ^ -2112911582 : 0x29FB5EFB ^ -1309976421 ^ 0x5922A800 ^ -1053643167)
         {
            case 0:
               if(this._653add188f22a36ded3e23d4 != null)
               {
                  this._653add188f22a36ded3e23d4();
               }
               _ba7fe333230ac51496d90cb8();
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._8b7559d1c15f4120cfea4be6 = new FrameButtonWrapper();
         this._8b7559d1c15f4120cfea4be6.process(this._6d187ba9c14485f6cad0c551.buttonAction);
         this._8b7559d1c15f4120cfea4be6.handler = function(param1:MouseEvent):void
         {
            _4f254116765eb1a39d6712be(_8b7559d1c15f4120cfea4be6,param1);
         };
      }
   }
}

