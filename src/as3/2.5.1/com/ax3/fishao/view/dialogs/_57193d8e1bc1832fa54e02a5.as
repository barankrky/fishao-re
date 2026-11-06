package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.view.wrappers.impl._5b1e36667b13cdc96a896530;
   import com.ax3.fishao.view.wrappers.impl._8964e753fb9dbef2411af0bf;
   import com.ax3.fishao.view.wrappers.impl._ed78a7fba29dd220c5e19bbc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _57193d8e1bc1832fa54e02a5 extends _8071087ebe26c264282580d0
   {
      
      public var title:TextField;
      
      public var serverName:TextField;
      
      public var users:TextField;
      
      public var viewsListHSlider:_8964e753fb9dbef2411af0bf;
      
      public var listSet:_5b1e36667b13cdc96a896530;
      
      private var _0f1ede03f188e9939475954e:DisplayObject;
      
      protected var _worldLineFactory:_b6959442d774100015b69ffa;
      
      protected var worldListContainer:DisplayObjectContainer;
      
      public function _57193d8e1bc1832fa54e02a5()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刬别剼刳勜删办刱勫劉勺努劲刉努劁剗刋刡労剃刚剒劊勩劦劁劜劦劶劘劚劇则","刏剩刷劷努刄剌刉勸劯剆刟剺劒剰勔");
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._worldLineFactory = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_ed78a7fba29dd220c5e19bbc);
         this._worldLineFactory.process(this._0f1ede03f188e9939475954e);
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         super._d998e9465b31be9894488c29(param1);
         this._0f1ede03f188e9939475954e = DisplayObjectContainer(DisplayObjectContainer(param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捧授措揃捀揤捰捨捄捭揔揲揌揅揳描捍掟掺掴挏掀挃挣挐挨捉挕揤揸揮握揘挸挵揱掖挡揑掤捖掘掴换","掑揙挀掮揹捫掬揿捛掵掣捔揦揅捷揃"))).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剕務劵劢刄勓剗剏勁刺剘刽剿劲刍劅则劂刣剼勹創","副剕剻勛刦劌刌加则剱剖办劄剒切剷"))).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劷刮券刉刔勸勾労剦勒劲勈剧势勈剭剸刎剳勵勭剘剗劰刍刜","勾刀劐劍剳剉刎刏勊剢刚劍刖刘剻劔"));
         this.worldListContainer = DisplayObjectContainer(param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掘描捱捵捳捐挷捸掇掁捡掏挺捚接捚挵挚推挦挬掐揷掴揎揥挒挒掣提揣揟揲捇揺捐捆掴挫捷捇持揂控","揞捍捼描挈捦揰探挏揾捇揃捳挢挊揊")));
      }
   }
}

