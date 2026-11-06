package com.ax3.fishao.view.dialogs.events.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.events.model._9d2dc0500fb727297903d3c5;
   import com.ax3.fishao.view.dialogs.events.views._1d110275a0fb64f1fb6e096d;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import protocol.api.events.data.EventInfo;
   
   public class _d0ae46657ea01e4a0b634092 extends _4b286dc622ac4f91241f92f9
   {
      
      private var _e509bbaab74d67d7847b5b8a:EventInfo;
      
      private var _634feead630df11ac31a9d8a:_1d110275a0fb64f1fb6e096d = new _1d110275a0fb64f1fb6e096d(this);
      
      public function _d0ae46657ea01e4a0b634092(param1:EventInfo)
      {
         this._e509bbaab74d67d7847b5b8a = param1;
         super(this._634feead630df11ac31a9d8a);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = 0x5CD4AB63 ^ 0x2522EBEF ^ -1398317739 ^ -716104231;
         var _loc2_:int = -1858483050 ^ 0x02BF901C ^ 0x5E7BAF2C ^ -838995034;
         this._634feead630df11ac31a9d8a.eventType = this._e509bbaab74d67d7847b5b8a.type;
         var _loc3_:String = _c2ad9d37d7be0097d6d2e977.get(_9d2dc0500fb727297903d3c5._519a3c506d56636e6d647928(this._e509bbaab74d67d7847b5b8a.type));
         if(this._e509bbaab74d67d7847b5b8a.type == _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_WITH_STAR)
         {
            _loc1_ = Debug.assertProperty(this._e509bbaab74d67d7847b5b8a.additionalInfo,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刜勗劬刂剗勮刕剕剺创剎劑别剈刄剈刏刑勰刺刧劔劙勋勆剿励剘劢勼","剦刾剸剻剟剢剑劁初剰劐劕刹劤削剳"));
            _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,_loc1_);
         }
         else if(this._e509bbaab74d67d7847b5b8a.type == _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH_WITH_TYPE || this._e509bbaab74d67d7847b5b8a.type == _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_WITH_TYPE)
         {
            _loc2_ = Debug.assertProperty(this._e509bbaab74d67d7847b5b8a.additionalInfo,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刲劾勴剓前刌刚勠刧劗劭劘勛刻勈刅别剟剽前劝刭","刬劯剦労劒剜剅劄勚剫劷剱刦剼勄剮"));
            _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴔဇ჻ရဥဗၨႷဋძჲၚ႑Ⴚဴბთၕ","ၘႿ။၊ၴტၠႶႠဵნအႇဏ္ჵ") + _loc2_));
            this._634feead630df11ac31a9d8a.fishID = _loc2_;
         }
         this._634feead630df11ac31a9d8a.eventName = _loc3_;
         this._634feead630df11ac31a9d8a.eventStartTime = this._e509bbaab74d67d7847b5b8a.timeStart;
         this._634feead630df11ac31a9d8a.eventDuration = this._e509bbaab74d67d7847b5b8a.duration;
      }
   }
}

