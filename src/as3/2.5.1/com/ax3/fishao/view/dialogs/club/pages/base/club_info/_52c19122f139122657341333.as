package com.ax3.fishao.view.dialogs.club.pages.base.club_info
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.requirements._f64d5035ede01b069be48bbf;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member._78b94b2f0695f31f31cc8da3;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member._93e36bc577a74e9124516ceb;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member._a2c6e1cd07ea790888ffa67f;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.model._c47dd344395f9f377962c5cf;
   import com.brokenfunction.json.decodeJson;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _52c19122f139122657341333 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _bf695e4e357b3bacdc4cd417:_518280cac6f3ae016ad4f350;
      
      private var _0425a0a0b9d9163d9989d107:_6eb93d9e9c48f5ee9204817d;
      
      private var _19b910ef101b84d519434665:String;
      
      private var _6cdb29f7a7ae5c6c60b0762f:int;
      
      private var _857be644da7e4a427d72c9cb:int;
      
      private var _e9c15da74c0af64fa518cfb7:int;
      
      private var _8171899f20e30d58c39f41d8:Array;
      
      private var _57b191c93315bc9b054a4ffb:int;
      
      private var _21af4302bdedf8ca2f108a85:_a2c6e1cd07ea790888ffa67f;
      
      private var _3026a57949dd4e33c0ca011c:_78b94b2f0695f31f31cc8da3;
      
      private var _1c2924ace34164082ca8e175:_93e36bc577a74e9124516ceb;
      
      public function _52c19122f139122657341333(param1:DisplayObjectContainer)
      {
         this._0425a0a0b9d9163d9989d107 = new _6eb93d9e9c48f5ee9204817d(this,param1);
         super(this._0425a0a0b9d9163d9989d107);
         this.init();
      }
      
      public function set membersCount(param1:int) : void
      {
         var _loc2_:int = 0x7A6C60D8 ^ 0x52B6051E ^ 0x1C4A07FA ^ 0x5D8435AD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1584566786 ^ -1262414610 ^ 0x2AA1B382 ^ 0x56F99D01))
            {
               case 0:
                  this._e9c15da74c0af64fa518cfb7 = param1;
                  this._3026a57949dd4e33c0ca011c.membersCount = this._e9c15da74c0af64fa518cfb7;
                  this._0425a0a0b9d9163d9989d107._c0a6069f4ff1c2614a320633(this._e9c15da74c0af64fa518cfb7,this._857be644da7e4a427d72c9cb);
                  return;
               case 1:
                  return;
               case 2:
                  if(this._e9c15da74c0af64fa518cfb7 == param1)
                  {
                     _loc2_ = 0x708E3EBE ^ -1159697570 ^ 0x0FB0F4F3 ^ -1395984767;
                  }
                  else
                  {
                     _loc2_ = 0x2C530743 ^ 0x20028AD6 ^ 0x66E8378B ^ 0x03ADED8D;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set clubData(param1:Object) : void
      {
         this._0425a0a0b9d9163d9989d107.points = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჃႧვჽႽၒႁၐႀၔ჉Ⴖထွၜ႐ა჎ၯဨ","႐ဍဦၠဗႛჄ႙ၶႲၚၺၯႮႣၼ"));
         this._6cdb29f7a7ae5c6c60b0762f = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剱勒劈勓務务劆刱剆初勽劼","务刯刦剕劽剓別剾劌勤剜勩刢勀勓劀"));
         this._19b910ef101b84d519434665 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剕劔劙剈切剬划勞副务别勛剰刞剒剂","劐刱勬劰勬剐劰刜判劅勋划劌剉刾刡"));
         this._57b191c93315bc9b054a4ffb = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺勲劧割刑劑剙勹勽勝勥创剻劚勆剓剺劢","剷到勆劓剐勲別剰刢割刿劭刎刻勥剳"));
         var _loc2_:Array = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勃劋勘劢勷刬劼务創劧勜募制动刏刾劊剽劇制刄列","剉刿劥勽刓劼刔剚劭则劃劍劇剜則刜"));
         this.membersCount = _loc2_.length;
         this._0425a0a0b9d9163d9989d107.emblemID = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勿刷刨劎力勯剄勢剤劣勽制勦勑勧加励刈刀劋劢劽劤劖刊募","勿剺剾勦剫刜劮劒劈創勷刁刿剈剕刂"));
         var _loc3_:int = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၪၛႶၽ၊ဗၾხၿრႡဈჃၭနၴၜჱဲႭႳၝညဩ჆ၱၼၬဏႆၮ္჎ဌၑჭအღၮ့Ⴣპဲ႒ေၙჷ႕","၄ဿၟဧ်ႾဟႪ၌ჽသ၇၊Ⴔႎ၉"));
         var _loc4_:int = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揦揻揧掅捺掉揠挴捕挎挟掕捣掽挌捾掝接掄掿掓挶捩掰捊捣据掍捲掐挪据挲振捒捶掠捤掚掠捲挮","挕授挓挺挢揭揼掸掠揇揵挟揎挅捐揎"));
         this._0425a0a0b9d9163d9989d107._72c7f1aaab919ce7dbbedabc(_loc3_,_loc4_);
         var _loc5_:_8a55e6919385386ebc54f870 = new _8a55e6919385386ebc54f870();
         _loc5_.deserialize(param1);
         this._21af4302bdedf8ca2f108a85.clubInfo = _loc5_;
         this._3026a57949dd4e33c0ca011c.possibleLeaderInfo = param1[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍挌揩挟捜揫挤揦挕掵挄揆掍換掶掞掛掽捪挤掸掇掋揘揉挊掷揵掯捡挚捎掓掺挶揞捒捷","捎捴揂揻挑挂揲振換挊捆揲捐挿採揊")];
         this._1c2924ace34164082ca8e175.level = this._57b191c93315bc9b054a4ffb;
         this._06f78bcd16e9367a9f115dd5(param1[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揲揿掇捷揖揠捴挼揇掴揂捃援掗捐捡捛揢揕挒捌揯揥挬挲接掳据掗挣捩揱","挕捌挧換掍掜揠捃揌掕揋挦揙挆掳挫")]);
         this._1d0eb5416177cfacfee98e25();
         this._192f358c8e76485d7a56742f();
         this._7330a899e05108a236ce2504();
         this._130bf56ee78ac7c85d6a497a();
      }
      
      private function _06f78bcd16e9367a9f115dd5(param1:String) : void
      {
         if(UtilsString.isNullOrEmpty(param1))
         {
            return;
         }
         var _loc2_:Object = decodeJson(param1);
         this._8171899f20e30d58c39f41d8 = _f64d5035ede01b069be48bbf._b8514e3989ca2f7992b2b976(_loc2_);
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._0425a0a0b9d9163d9989d107.buttonJoin:
                  §§push(-964979650 ^ -1857417764 ^ 0x7BD4B170 ^ 0x2CE52892);
                  break;
               case this._0425a0a0b9d9163d9989d107.buttonLeave:
                  §§push(0x443B4283 ^ 0x2E5F900C ^ -206692501 ^ -1714762267);
                  break;
               case this._0425a0a0b9d9163d9989d107.buttonUpgrade:
                  §§push(-1398300264 ^ 0x09B7F3A7 ^ -1528725974 ^ 0x01F12C17);
                  break;
               default:
                  §§push(-1944951072 ^ 0x09CAE69B ^ -2028673812 ^ 0x02CC6494);
            }
            switch(§§pop())
            {
               case 0:
                  this._21af4302bdedf8ca2f108a85._5b0b922e5cc4a5322f6ea1d2();
                  _loc3_ = true;
                  break;
               case 1:
                  this._3026a57949dd4e33c0ca011c._5b0b922e5cc4a5322f6ea1d2();
                  _loc3_ = true;
                  break;
               case 2:
                  this._1c2924ace34164082ca8e175._5b0b922e5cc4a5322f6ea1d2(this._3f414b80a43bd496bd1f50ce);
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _3f414b80a43bd496bd1f50ce() : void
      {
         ++this._57b191c93315bc9b054a4ffb;
         this._1c2924ace34164082ca8e175.level = this._57b191c93315bc9b054a4ffb;
         this._130bf56ee78ac7c85d6a497a();
         this._1d0eb5416177cfacfee98e25();
      }
      
      private function init() : void
      {
         this._bf695e4e357b3bacdc4cd417 = GameSwf.instance.managerClubs;
         this._21af4302bdedf8ca2f108a85 = new _a2c6e1cd07ea790888ffa67f();
         this._3026a57949dd4e33c0ca011c = new _78b94b2f0695f31f31cc8da3();
         this._1c2924ace34164082ca8e175 = new _93e36bc577a74e9124516ceb();
      }
      
      private function _192f358c8e76485d7a56742f() : void
      {
         var _loc1_:Boolean = false;
         _loc1_ ||= this._bf695e4e357b3bacdc4cd417.userInClub;
         _loc1_ ||= this._19b910ef101b84d519434665 == _c47dd344395f9f377962c5cf.ECT_CLOSED;
         _loc1_ ||= this._857be644da7e4a427d72c9cb == this._e9c15da74c0af64fa518cfb7;
         this._0425a0a0b9d9163d9989d107.buttonJoin.visible = !_loc1_;
      }
      
      private function _130bf56ee78ac7c85d6a497a() : void
      {
         var _loc1_:Boolean = false;
         _loc1_ ||= !this._bf695e4e357b3bacdc4cd417._b8d84096df59019d1d24ecdc(this._6cdb29f7a7ae5c6c60b0762f);
         _loc1_ ||= this._57b191c93315bc9b054a4ffb == this._bf695e4e357b3bacdc4cd417.levelMax;
         this._0425a0a0b9d9163d9989d107.buttonUpgrade.visible = !_loc1_;
         this._0425a0a0b9d9163d9989d107.labelUpgrade.source.visible = !_loc1_;
      }
      
      private function _1d0eb5416177cfacfee98e25() : void
      {
         this._857be644da7e4a427d72c9cb = this._bf695e4e357b3bacdc4cd417._635253f13b6f6f377142cfbd(this._57b191c93315bc9b054a4ffb);
         this._0425a0a0b9d9163d9989d107._c0a6069f4ff1c2614a320633(this._e9c15da74c0af64fa518cfb7,this._857be644da7e4a427d72c9cb);
         this._0425a0a0b9d9163d9989d107.buttonUpgrade.label = this._bf695e4e357b3bacdc4cd417._9be911f3542f4c086c63669e(this._57b191c93315bc9b054a4ffb + (0x33DD85B1 ^ -1943051317 ^ 0x37AFD845 ^ -2007155138)).toString();
      }
      
      private function _7330a899e05108a236ce2504() : void
      {
         this._0425a0a0b9d9163d9989d107.buttonLeave.visible = this._bf695e4e357b3bacdc4cd417._b8d84096df59019d1d24ecdc(this._6cdb29f7a7ae5c6c60b0762f);
      }
   }
}

