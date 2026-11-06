package com.ax3.fishao.view.dialogs.club.pages.recommended.item
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member._a2c6e1cd07ea790888ffa67f;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import flash.events.Event;
   
   public class _0dec8b8b166650436846e5fe extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _de0bffbce2de9ce63e70dab8:_31a2abd55fd632d239033569 = new _31a2abd55fd632d239033569(this);
      
      private var _e10064a1e8f582f3f0339a9d:Object;
      
      private var _b6c0a5415f1d1cf128047dcf:_8a55e6919385386ebc54f870;
      
      private var _c2c4fea6e76088e9b38af644:_a2c6e1cd07ea790888ffa67f;
      
      public function _0dec8b8b166650436846e5fe(param1:Object)
      {
         super(this._de0bffbce2de9ce63e70dab8);
         this._e10064a1e8f582f3f0339a9d = param1;
         this.init();
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._c2c4fea6e76088e9b38af644.canOpenDialogInside = param1;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_c6dd57dd12cf02bae4594249 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._de0bffbce2de9ce63e70dab8.viewHitArea:
                  §§push(0x330B5BE2 ^ 0x6EBBB2AC ^ 0x09F2EE84 ^ 0x544207CA);
                  break;
               case this._de0bffbce2de9ce63e70dab8.buttonJoin:
                  §§push(0x028A6E1D ^ 0x670424A2 ^ -1769366905 ^ -217591751);
                  break;
               default:
                  §§push(-492025955 ^ -2022416206 ^ 0x19A5FEE6 ^ 0x7C7DD9CB);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_c6dd57dd12cf02bae4594249);
                  _loc3_.entity = this._b6c0a5415f1d1cf128047dcf;
                  _loc3_.show();
                  break;
               case 1:
                  this._c2c4fea6e76088e9b38af644._5b0b922e5cc4a5322f6ea1d2();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._b6c0a5415f1d1cf128047dcf = new _8a55e6919385386ebc54f870();
         this._b6c0a5415f1d1cf128047dcf.deserialize(this._e10064a1e8f582f3f0339a9d);
         this._c2c4fea6e76088e9b38af644 = new _a2c6e1cd07ea790888ffa67f();
         this._c2c4fea6e76088e9b38af644.clubInfo = this._b6c0a5415f1d1cf128047dcf;
         this._de0bffbce2de9ce63e70dab8.name = this._b6c0a5415f1d1cf128047dcf.name;
         this._de0bffbce2de9ce63e70dab8.points = Debug.assertProperty(this._e10064a1e8f582f3f0339a9d,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰剚刺刷刡励剀动勬劓劀勣刱助剅剕剹剛剁劰","劏刱劆剜勢功剙勘勆勮勃劘劅剧剅劗"));
         var _loc1_:int = Debug.assertProperty(this._e10064a1e8f582f3f0339a9d,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴕဵ႔ႚႷკထၚၴჽဒကၪပၤႸၿ႗ခႶထၳရတၑႅဋယ၎ၦည჉ငႎ","႗ဖၭၿჵრ႓Ⴑၮ჋Ⴇဧၤჸဦှ"));
         var _loc2_:int = Debug.assertProperty(this._e10064a1e8f582f3f0339a9d,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႁ၀ဳၚဗპဟၪႦ჏Ⴁ႞ၘေგႃၥჹ","ჵဖთჽျ႘ညယှူ႐႗ჩင႑ၕ"));
         var _loc3_:_518280cac6f3ae016ad4f350 = GameSwf.instance.managerClubs;
         var _loc4_:int = _loc3_._635253f13b6f6f377142cfbd(_loc2_);
         this._de0bffbce2de9ce63e70dab8._c0a6069f4ff1c2614a320633(_loc1_,_loc4_);
         this._de0bffbce2de9ce63e70dab8.emblemID = this._b6c0a5415f1d1cf128047dcf.emblemID;
      }
   }
}

