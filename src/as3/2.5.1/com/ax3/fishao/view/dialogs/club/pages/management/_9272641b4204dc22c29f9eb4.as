package com.ax3.fishao.view.dialogs.club.pages.management
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader._200262df3250a05124bb3b5c;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.model._c47dd344395f9f377962c5cf;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.base.club_type._28e0caca87772f4e883b1b15;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._6cc625326b445c0ded039b94;
   import com.ax3.fishao.view.dialogs.club.pages.base.requirement_level._344663aafe1e8f208644cd4b;
   import com.ax3.fishao.view.dialogs.club.pages.management.item._63de0676305bd6aa1d2c10bc;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.management.ResponseClubsGetPageManagement;
   
   public class _9272641b4204dc22c29f9eb4 extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _5e55f4cb438398223fd7b0d0:_24eddea51654a86a593631b6;
      
      private var _231ccd0347d964cfe89c5a8d:_6cc625326b445c0ded039b94;
      
      private var _ea2bca1810265e2b245277d4:_28e0caca87772f4e883b1b15;
      
      private var _b6b5066fa7cf3fa709acf6a0:_344663aafe1e8f208644cd4b;
      
      private var _312aff7c4c2f116fd6b15d0c:_200262df3250a05124bb3b5c;
      
      private var _bc1f677fa26292c1db5ae1c1:Array;
      
      private var _b500758451d26d4b7b80ae36:int;
      
      public function _9272641b4204dc22c29f9eb4(param1:DisplayObjectContainer)
      {
         this._5e55f4cb438398223fd7b0d0 = new _24eddea51654a86a593631b6(this,param1);
         super(this._5e55f4cb438398223fd7b0d0);
         this.init();
      }
      
      override protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._3d45492cb1b715a713c0c8d0(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageManagement = param1 as ResponseClubsGetPageManagement;
         this._5e55f4cb438398223fd7b0d0.viewInputDescription.label.text = _loc2_.description;
         this._0c4c7a9fd5273266b30b4c21(_loc2_.waitingForApprove);
         this._5e55f4cb438398223fd7b0d0.viewPagination.pageCurrent = -80734977 ^ -224075383 ^ -829685783 ^ -954266977;
         this._b6b5066fa7cf3fa709acf6a0.requiredLevel = _loc2_.requiredLevel;
         this._7c8cf33200c441012cf03bec();
         this._fe6298aebe594e65068f3e7f();
         this._08787c39f1f8fea8ed6238e3();
         this._1acefeb2510bdd827feece51();
      }
      
      override public function _1ca02568f97f6901b3c3003f() : void
      {
         super._1ca02568f97f6901b3c3003f();
         this._8540473eaa9b73b2d927daed();
      }
      
      private function _f1fcea4f0afeaa42cadd3f30(param1:String) : void
      {
         var _loc2_:_63de0676305bd6aa1d2c10bc = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in this._bc1f677fa26292c1db5ae1c1)
         {
            if(_loc2_.login == param1)
            {
               _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._bc1f677fa26292c1db5ae1c1,_loc2_);
               _loc3_ = _loc2_.view.source;
               _loc3_.parent.removeChild(_loc3_);
               this._cab4044af974cac74d748873();
               break;
            }
         }
         this._1acefeb2510bdd827feece51();
         this._fe6298aebe594e65068f3e7f();
         this._08787c39f1f8fea8ed6238e3();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._5e55f4cb438398223fd7b0d0.viewPagination.buttonLeft:
                  §§push(-895749692 ^ -747751267 ^ 0x7BCD18F6 ^ 0x6238D1AF);
                  break;
               case this._5e55f4cb438398223fd7b0d0.viewPagination.buttonRight:
                  §§push(-654143743 ^ -1549130329 ^ -2077825204 ^ -24228373);
                  break;
               default:
                  §§push(-387310402 ^ -90405805 ^ -55314244 ^ -289054637);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._08787c39f1f8fea8ed6238e3();
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._b500758451d26d4b7b80ae36 = -528607269 ^ 0x47716598 ^ -930259052 ^ 0x6F822DD3;
         this._bc1f677fa26292c1db5ae1c1 = [];
         this._312aff7c4c2f116fd6b15d0c = new _200262df3250a05124bb3b5c();
         var _loc1_:_8a55e6919385386ebc54f870 = _managerClubs.userClub;
         this._231ccd0347d964cfe89c5a8d = new _6cc625326b445c0ded039b94(this._5e55f4cb438398223fd7b0d0.sourceEmblem);
         this._231ccd0347d964cfe89c5a8d.emblemID = _loc1_.emblemID;
         this._ea2bca1810265e2b245277d4 = new _28e0caca87772f4e883b1b15(this._5e55f4cb438398223fd7b0d0.sourceClubType);
         this._ea2bca1810265e2b245277d4.type = _loc1_.type;
         this._b6b5066fa7cf3fa709acf6a0 = new _344663aafe1e8f208644cd4b(this._5e55f4cb438398223fd7b0d0.sourceRequirementLevel);
         this._5e55f4cb438398223fd7b0d0.viewInputDescription.label.maxChars = ConstantsBase.CLUB_DESCRIPTION_CHARACTERS_MAX;
         this._1acefeb2510bdd827feece51();
      }
      
      private function _7c8cf33200c441012cf03bec() : void
      {
         this._312aff7c4c2f116fd6b15d0c.emblemID = this._231ccd0347d964cfe89c5a8d.emblem;
         this._312aff7c4c2f116fd6b15d0c.clubType = this._ea2bca1810265e2b245277d4.type;
         this._312aff7c4c2f116fd6b15d0c.requiredLevel = this._b6b5066fa7cf3fa709acf6a0.requiredLevel;
         this._312aff7c4c2f116fd6b15d0c.description = this._5e55f4cb438398223fd7b0d0.viewInputDescription.label.text;
         this._312aff7c4c2f116fd6b15d0c.infoEstablished = true;
      }
      
      private function _0c4c7a9fd5273266b30b4c21(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_63de0676305bd6aa1d2c10bc = null;
         var _loc4_:DisplayObject = null;
         _f2f26e7a66175d89c6f850e5(this._bc1f677fa26292c1db5ae1c1);
         var _loc5_:DisplayObjectContainer = view.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc3_ = new _63de0676305bd6aa1d2c10bc(_loc2_,this._f1fcea4f0afeaa42cadd3f30);
            _loc4_ = _loc3_.view.source;
            _loc5_.addChild(_loc4_);
            _loc4_.x = -1679542614 ^ -737942907 ^ -598288987 ^ -1817116495;
            this._bc1f677fa26292c1db5ae1c1.push(_loc3_);
         }
         this._cab4044af974cac74d748873();
      }
      
      private function _cab4044af974cac74d748873() : void
      {
         _2366485e451061bdda2a0f22(this._bc1f677fa26292c1db5ae1c1,-1702207648 ^ -2031642176 ^ -1966256272 ^ -1767864115,this._b500758451d26d4b7b80ae36,0x4339D729 ^ -62454513 ^ -996607381 ^ 0x7BE6284D);
      }
      
      private function _fe6298aebe594e65068f3e7f() : void
      {
         this._5e55f4cb438398223fd7b0d0.viewPagination.pagesTotal = Math.ceil(this._bc1f677fa26292c1db5ae1c1.length / this._b500758451d26d4b7b80ae36);
      }
      
      private function _08787c39f1f8fea8ed6238e3() : void
      {
         _3d866f07adb02a6079215c17(this._bc1f677fa26292c1db5ae1c1,this._5e55f4cb438398223fd7b0d0.viewPagination.pageCurrent,this._b500758451d26d4b7b80ae36);
      }
      
      private function _1acefeb2510bdd827feece51() : void
      {
         var _loc1_:_8a55e6919385386ebc54f870 = _managerClubs.userClub;
         if(_loc1_.type != _c47dd344395f9f377962c5cf.ECT_PRIVATE || this._bc1f677fa26292c1db5ae1c1.length == (-1466128093 ^ 0x186C0B0B ^ 0x6CFFEDB7 ^ -602976353))
         {
            this._5e55f4cb438398223fd7b0d0.viewPagination.hide();
            this._5e55f4cb438398223fd7b0d0.viewTableTitle.visible = false;
         }
         else
         {
            this._5e55f4cb438398223fd7b0d0.viewPagination.show();
            this._5e55f4cb438398223fd7b0d0.viewTableTitle.visible = true;
         }
      }
      
      private function _8540473eaa9b73b2d927daed() : void
      {
         var _loc1_:int = -149385463 ^ 0x7FA927B5 ^ -427140295 ^ 0x10EBA287;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x15F1758D ^ 0x7EAEF477 ^ -1057497031 ^ -713543488))
            {
               case 0:
                  return;
               case 1:
                  if(!this._312aff7c4c2f116fd6b15d0c._f5aeda199a20aedfb69196e1(this._231ccd0347d964cfe89c5a8d.emblem,this._5e55f4cb438398223fd7b0d0.viewInputDescription.label.text,this._ea2bca1810265e2b245277d4.type,this._b6b5066fa7cf3fa709acf6a0.requiredLevel))
                  {
                     _loc1_ = 0x3A705397 ^ -154852175 ^ 0x0726499A ^ -1253871681;
                  }
                  else
                  {
                     _loc1_ = 0x666E9F71 ^ 0x785A84B3 ^ 0x13AB027B ^ 0x734F48B8;
                  }
                  break;
               case 2:
                  this._7c8cf33200c441012cf03bec();
                  this._312aff7c4c2f116fd6b15d0c._5b0b922e5cc4a5322f6ea1d2();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._8540473eaa9b73b2d927daed();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

