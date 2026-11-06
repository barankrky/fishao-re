package com.ax3.fishao.view.dialogs.club_fish.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._a240f0394e2d5677aff9f7b4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._616a1c5d0674d17746366a7f;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   
   public class _4e7f3e3bd2f00c6aad290b0c extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _393f6bd2a8cbe643a183713e:gViewClubsFishItem = new gViewClubsFishItem();
      
      private var _6d557bfcb1e04832a5fc193e:FrameButtonWrapper;
      
      private var _6f513a0ba3670c820cb7c15f:_616a1c5d0674d17746366a7f;
      
      private var _b0dc39f95125613d6f02f75f:_73899a4de8f83c8d2c26f545;
      
      private var _eec7351926f36657131288f3:_73899a4de8f83c8d2c26f545;
      
      public function _4e7f3e3bd2f00c6aad290b0c(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._393f6bd2a8cbe643a183713e);
         this.init();
      }
      
      public function get viewFish() : _616a1c5d0674d17746366a7f
      {
         return this._6f513a0ba3670c820cb7c15f;
      }
      
      public function get buttonBuy() : FrameButtonWrapper
      {
         return this._6d557bfcb1e04832a5fc193e;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this._393f6bd2a8cbe643a183713e.viewLock.visible = param1;
         this._393f6bd2a8cbe643a183713e.viewUnlocked.visible = !param1;
         this._393f6bd2a8cbe643a183713e.labelLock.visible = param1;
         this._6d557bfcb1e04832a5fc193e.visible = param1;
         this._6f513a0ba3670c820cb7c15f.filters = param1 ? [_a240f0394e2d5677aff9f7b4._4e8eecfe2829137c38b53096(-939840437 ^ -1296765366 ^ 0x394143ED ^ -1276018964)] : [];
      }
      
      public function set name(param1:String) : void
      {
         this._b0dc39f95125613d6f02f75f.text = param1;
      }
      
      public function set fishID(param1:int) : void
      {
         this._6f513a0ba3670c820cb7c15f.imageURL = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(ConstantsBase.IMAGE_NAME_FISH_225.replace(_706c123ff0b2d45829c1bb3e.ESTS_ID,param1));
      }
      
      public function _005f04e3f504600c930ccbfa(param1:int) : void
      {
         this.isLocked = true;
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_FISH_LABEL_LOCK);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,param1);
         this._eec7351926f36657131288f3.text = _loc2_;
         this._6d557bfcb1e04832a5fc193e.visible = false;
         this._393f6bd2a8cbe643a183713e.labelLock.visible = true;
      }
      
      public function _aa5b7ba2d7be77d5ff6109e2(param1:int) : void
      {
         this.isLocked = true;
         this._6d557bfcb1e04832a5fc193e.visible = true;
         this._6d557bfcb1e04832a5fc193e.label = param1.toString();
         this._393f6bd2a8cbe643a183713e.labelLock.visible = false;
      }
      
      private function init() : void
      {
         this._6f513a0ba3670c820cb7c15f = new _616a1c5d0674d17746366a7f(controller,this._393f6bd2a8cbe643a183713e.viewFish);
         this._6f513a0ba3670c820cb7c15f._fc17178734ae7cc816dbcc2f(true);
         this._6f513a0ba3670c820cb7c15f.source.visible = true;
         this._6f513a0ba3670c820cb7c15f.source.alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掯揌掠挼捯捷掦掲捀挹挩指掙捛挓持揕捝挼掔掏挔掖捫","捭捚揍揌捬捅揱探挽挽掽揂捼振探揲");
         this._b0dc39f95125613d6f02f75f = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挠掬挤挩排揚捬捍掑掓捅揰捜捖挦挧揽揊掘揅掋挷挣挟捇揻挔揖","掮挙揪揸挍挳掅掤揷捃挾揫挮捶措掂"),null);
         this._eec7351926f36657131288f3 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ြვၩ჊ဪႿჟၻွჿ္ၭწၞဃၩჼႄသႷჱწၔლჳრ","ီဧႫႴၨၥဍၮၽქჹဿဏႛုჸ"),null);
         this._6d557bfcb1e04832a5fc193e = _092050566a3adcf2725382ab(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔剜剣削勫势勯刊刷勊勂勮剥刯勗勌勣劼剉劌劜刋劽剼刵勰","劙劥剤劁勂剁募劤刻劌刱勣刎剭劤勬"));
      }
   }
}

