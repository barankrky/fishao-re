package com.ax3.fishao.view.tooltips
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.OpenedLocation;
   import com.ax3.fishao.view.wrappers.impl._ccc79943b3dd572e1de68e20;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class _6e60de8b9e3e23f2004f5256 extends Sprite
   {
      
      protected var _asset:MovieClip;
      
      protected var _title:_ccc79943b3dd572e1de68e20;
      
      protected var _playersCount:_ccc79943b3dd572e1de68e20;
      
      public function _6e60de8b9e3e23f2004f5256()
      {
         super();
         this._asset = new OpenedLocation();
         this._title = new _ccc79943b3dd572e1de68e20();
         this._title.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၧ႞ဃါ၂ၬဉၢჩဥ၂ყპყႵ႞ႄၮ","ჿჃႼအၡယႍသၖოၪနၲყ႐႒")));
         this._playersCount = new _ccc79943b3dd572e1de68e20();
         this._playersCount.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捠挆挳捙挛捺掵掁捨掚揰揯揔掖揹揮揋挍掷挝揖排挷揚掐挂掱挔揠掜掶换","挮挈揱揇揳掊捫掣控捀挥捞掎捾接掩")));
         addChild(this._asset);
      }
   }
}

