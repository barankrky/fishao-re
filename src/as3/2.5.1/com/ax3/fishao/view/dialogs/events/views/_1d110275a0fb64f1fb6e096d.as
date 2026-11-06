package com.ax3.fishao.view.dialogs.events.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.utils._f7b71c71e2cedae320db0f2d;
   import flash.text.TextField;
   
   public class _1d110275a0fb64f1fb6e096d extends _d0d7c5d83a4ffc1e9f3b9c9f
   {
      
      private var _3269be3ddc7c0eb0b84f1da2:TextField;
      
      private var _941dea20761578ceb05a8b9e:TextField;
      
      private var _2ee3781bee14670e30eb2dfd:TextField;
      
      public function _1d110275a0fb64f1fb6e096d(param1:_988093efdfa36e13bfd6c6cf)
      {
         _source = new gViewEventUpcoming();
         super(param1,_source);
         this.init();
      }
      
      public function set eventName(param1:String) : void
      {
         this._3269be3ddc7c0eb0b84f1da2.text = UtilsString.limitCharCount(param1,0x6B7B628C ^ 0x23325C33 ^ -698128868 ^ -1641391939,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢挂捶捺捳挢挵捑挨捸揧揣掹捷","捆掉揇捖挢揙捝捉揫揻捝挒揪掤揮捏"));
      }
      
      public function set eventStartTime(param1:int) : void
      {
         var _loc2_:String = _f7b71c71e2cedae320db0f2d._8b989907d3a16fb81c0ca84b(param1);
         var _loc3_:String = _f7b71c71e2cedae320db0f2d._0c78fd125fdd70b7dbbcc231(param1);
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977._2f7580a40efdad518a4e9838(_loc3_);
         this._941dea20761578ceb05a8b9e.text = _loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌剀劆势刾刘剣剖劯劐","勓则势刉剙刖剢刀則刜劺剢剛劑勖刁") + _loc4_;
      }
      
      public function set eventDuration(param1:int) : void
      {
         this._2ee3781bee14670e30eb2dfd.text = _c2ad9d37d7be0097d6d2e977._8ba9cb48d043c2db72195536(param1);
      }
      
      private function init() : void
      {
         this._3269be3ddc7c0eb0b84f1da2 = Debug.assertProperty(_source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၎ႽၰဈႄပძဂႉရჂၧဋႷჸ჈ჼဍငၗ႑ႚပჁည჎","ေოჀှႨၓႶკ၇ဳႈႯကဖმჶ"));
         this._941dea20761578ceb05a8b9e = Debug.assertProperty(_source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჱღჵპႴႩၧ႒၈ဠჱၹၣၶႆျၥဒညႫჰ႘ჟဳၹ႞ႾႻဥသၹ჊ၻჼႠဥ","၀ურရဪჲႶჲႆၘၣၱဴညდჄ"));
         this._2ee3781bee14670e30eb2dfd = Debug.assertProperty(_source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဢ႑ႛၽႛჀმၤთႥႢၯ႞Ⴗကၐღၭ႘ჭჴဟႝဍႡၝმထၼ႟တာၻჲ","ၰႆႤႀ၄ႁჱဏცႩყဗ၎ဢႋဝ"));
         _fishImageBaseUrl = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掆揑挊掵排揓挑挠揷揆揽揵挅描捄揣揍揩掗挞掃捕揫挰揍掳挎振挭揬捓挃揉挖掉採掗挦揮挮揁揱掬揋挌捌捉挌揧换掇揠掐捃挖捌掟握掸掱挳揪","捝挤挞挡揇挏掣提揙揟掲挟揈挴挕捚");
         _fishBitmap.width = 0x16321F07 ^ 0x49E2BFE5 ^ 0x4347DE7E ^ 0x1C977EB1;
         _fishBitmap.height = -1248568740 ^ -852404389 ^ 0x10B52B6B ^ 0x6810264F;
         _fishBitmap.x = -2114998936 ^ -856603309 ^ 0x056F5DD8 ^ 0x4871B5E0;
         _fishBitmap.y = -1358756459 ^ -834783208 ^ -1501636689 ^ -951850462;
      }
   }
}

