package com.ax3.fishao.view.wrappers.impl.profile.prizesPanel
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._f2026c31da0de9afb771d1b0;
   import com.ax3.fishao.model.profile.prizesPanelData._01ea1380f215dbffddb70a11;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile._9d02c280d3d4b261c7a094d9;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._cc10ca05aac4527c75bdb2e7;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._2a3778bd7cef0b0147cc5678;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._a5b8b5a0e66fa8f31d236147;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._bdbf5ff4e1b06b31215378bb;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _012993bc4b52daf32f893c45 extends _9d02c280d3d4b261c7a094d9 implements IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      private static const _7b9164b4c0a4f267c4d78ac8:int = 0x2D0FE988 ^ -1770555544 ^ -958493755 ^ 0x7DA615F0;
      
      private static const _4a22a001f6ca29fa28f1266d:int = 0x79F74E50 ^ 0x1A29841D ^ -1684229647 ^ -129860634;
      
      private static const _8f26d1aa38ce51038c20b2d5:int = 0x2FF92465 ^ -2146641420 ^ 0x06FA2991 ^ -1458580352;
      
      private static const _7d2f00338330a9af160bf226:int = 0x5465855D ^ 0x5551C364 ^ -1834393854 ^ -1818420923;
      
      private static const _c0edabc4b2c2053c6d5b563f:int = 0x27D9FDDB ^ -958159267 ^ -1330725369 ^ 0x5194E585;
      
      private static const _6de3349038f26fc3e8ea0b21:int = 0x5AF66832 ^ -1681234428 ^ 0x2424AC1D ^ -451370456;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var noPrizesText:_f2026c31da0de9afb771d1b0;
      
      protected var _prizeItemFactory:_b6959442d774100015b69ffa;
      
      private var _5c67daac9e87333850e4d733:DisplayObject;
      
      private var _6aeaaff43b7376c1cadc26f5:_01ea1380f215dbffddb70a11;
      
      private var _43d2380006006b6d956a3921:_2a3778bd7cef0b0147cc5678;
      
      public function _012993bc4b52daf32f893c45()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         this._5c67daac9e87333850e4d733 = DisplayObjectContainer(DisplayObjectContainer(_asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挊挦揯挒挵挩措揸挐掁掕掿捠捙掿推掩掮揥掄挶挲捧接掬捂","掁掀捨挓揪掯掙捻挐掋挚挽揎捕捹揷"))));
         this._prizeItemFactory = new _b6959442d774100015b69ffa(_app.resourceManager,_swfFileName,_fa16dcba10b698968549baef);
         this._prizeItemFactory.process(this._5c67daac9e87333850e4d733);
         this._6aeaaff43b7376c1cadc26f5 = new _01ea1380f215dbffddb70a11();
         this._6d78527dff68d05846edbfea();
      }
      
      private function _62dfba9366c0cbc076a633b3() : void
      {
         var _loc1_:int = -1564172059 ^ -2074779809 ^ 0x2A40B836 ^ -2007509471;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-311854589 ^ 0x12D9D259 ^ -1009867044 ^ -1191665879))
            {
               case 0:
                  this.noPrizesText.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揄捧掃探捻掁挨掿揈掏揓掲捥捡揙捾捝揅捯挼揞捂振掅挧捰揮揣持挫掔揎捗捯挓挦捾挬掠揬揙掴","挓揲掱挛捪掫指挒捿挭捏挌挂捷揖揪"));
                  _loc1_ = 0x64A16FDB ^ -1174426886 ^ -1945458001 ^ -707592672;
                  break;
               case 1:
                  this._43d2380006006b6d956a3921.elements = this._6aeaaff43b7376c1cadc26f5.userPrizesList;
                  _06764c2cef0a83e404316a1f();
                  return;
               case 2:
                  if(this._6aeaaff43b7376c1cadc26f5.userPrizesList.length > (0x4511C6D5 ^ -207148757 ^ -1121977438 ^ 0x0BA9145C))
                  {
                     _loc1_ = -1874166864 ^ -151543292 ^ -828933651 ^ 0x2CAC31F5;
                  }
                  else
                  {
                     _loc1_ = 0x700CC7A7 ^ -2056681314 ^ 0x02E09412 ^ 0x73034A84;
                  }
                  break;
               case 3:
                  this.noPrizesText.text = "";
                  _loc1_ = 0x04DAD8E9 ^ 0x3492F9AF ^ -585959862 ^ 0x69DC46A2;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6d78527dff68d05846edbfea() : void
      {
         var _loc1_:_bdbf5ff4e1b06b31215378bb = new _bdbf5ff4e1b06b31215378bb(this.pagesTextField,this.rightPageButton,this.leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:_a5b8b5a0e66fa8f31d236147 = new _a5b8b5a0e66fa8f31d236147(_asset,_7b9164b4c0a4f267c4d78ac8,_4a22a001f6ca29fa28f1266d,_8f26d1aa38ce51038c20b2d5,_7d2f00338330a9af160bf226,_6de3349038f26fc3e8ea0b21,_c0edabc4b2c2053c6d5b563f);
         var _loc3_:_cc10ca05aac4527c75bdb2e7 = new _cc10ca05aac4527c75bdb2e7(this._prizeItemFactory);
         this._43d2380006006b6d956a3921 = new _2a3778bd7cef0b0147cc5678(_loc1_,_loc2_,_loc3_);
         this._43d2380006006b6d956a3921.autosize = TextFieldAutoSize.RIGHT;
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._6aeaaff43b7376c1cadc26f5.load(_login,this._62dfba9366c0cbc076a633b3);
      }
   }
}

