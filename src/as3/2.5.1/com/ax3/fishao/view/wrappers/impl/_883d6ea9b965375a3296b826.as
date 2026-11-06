package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display._52a40137cca5cae034297601;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.fishes.model._21587f0ac0bcbbbfdcd63026;
   import com.ax3.utils._a8d907fd0d19c674da3a32f4;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class _883d6ea9b965375a3296b826 implements IAssetWrapper
   {
      
      private static const _24ae1e2b87a720b9e746eb0c:int = -1980681699 ^ -2087506058 ^ 0x2871A8B8 ^ 0x2213B50C;
      
      private static const _3e6de61e64a81fd83c912416:int = -2103631671 ^ -385672989 ^ -1106011441 ^ -712138151;
      
      private var _bea9fe7c18485d42ef37aa21:DisplayObject;
      
      private var _350c461898c76ba48959239e:DisplayObjectContainer;
      
      private var _bf1bfe12891c68e53d011b92:TextField;
      
      private var _987c0e9315eeb9fc44427651:TextField;
      
      private var _acc10ad8aa218b3684e7b9ef:MovieClip;
      
      private var _4040beedacd960d4daf916be:TextField;
      
      private var _8f6e5631910c234469807e8e:ScrollWrapper;
      
      private var _c7c784a8d062d6d048510fb6:ScrollWrapper;
      
      private var _2e231d39f50b537f8c3bfc1a:MovieClip;
      
      private var _5ca95efbe2e007b39736e753:int = 346;
      
      private var _36effc263d2afd9fe33cfd5c:DisplayObjectContainer;
      
      private var _eafcd3f1e6480b041a51ce35:DisplayObjectContainer;
      
      private var _b8503324a30ebc71ef328e61:DisplayObject;
      
      private var _3238e0125f2ad8921c38fc7c:_416fb27b36f9690d05dd108a = new _416fb27b36f9690d05dd108a();
      
      private var _b040d99b610629031611ba9a:_416fb27b36f9690d05dd108a = new _416fb27b36f9690d05dd108a();
      
      private var _cf894f2a015bcb849c701ebf:_416fb27b36f9690d05dd108a = new _416fb27b36f9690d05dd108a();
      
      private var _86c9b5625dd2ef8e9caaea37:_416fb27b36f9690d05dd108a = new _416fb27b36f9690d05dd108a();
      
      private var _a6122114f557920f1384503f:DisplayObjectContainer;
      
      private var _478682c339e2815dce81818c:int;
      
      public function _883d6ea9b965375a3296b826()
      {
         super();
      }
      
      private static function _72349374ad0f1a87608f224b(param1:String, param2:Array, param3:_b6959442d774100015b69ffa) : Vector.<DisplayObject>
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:String = null;
         var _loc6_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc5_ in param2)
         {
            _loc4_ = param3._a54f7898880d608c7e1dc342();
            _416fb27b36f9690d05dd108a(_loc4_).text = _c2ad9d37d7be0097d6d2e977.get(param1 + _loc5_);
            _loc6_.push(_loc4_);
         }
         return _loc6_;
      }
      
      private static function _0434fc4067b11fe48fbb626b(param1:Vector.<DisplayObject>) : Vector.<DisplayObject>
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = -2145800484 ^ 0x1EE19FA2 ^ 0x6D8F201B ^ -210300571;
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc5_:int = 0x56CABEDA ^ 0x3D5A4316 ^ 0x05856EA3 ^ 0x6E15936F;
         while(_loc5_ < param1.length)
         {
            _loc2_ = true;
            _loc3_ = -1419550057 ^ -1088121318 ^ -1929413338 ^ -1732736597;
            while(_loc3_ < _loc4_.length)
            {
               if(_416fb27b36f9690d05dd108a(param1[_loc5_]).text == _416fb27b36f9690d05dd108a(_loc4_[_loc3_]).text)
               {
                  _loc2_ = false;
               }
               _loc3_++;
            }
            if(_loc2_)
            {
               _loc4_.push(param1[_loc5_]);
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._bea9fe7c18485d42ef37aa21 = param1;
         this._6365243991118b9c824b4de3();
      }
      
      public function set interfaceActive(param1:Boolean) : void
      {
         this._bea9fe7c18485d42ef37aa21.visible = param1;
      }
      
      public function set notepadScroll(param1:ScrollWrapper) : void
      {
         this._8f6e5631910c234469807e8e = param1;
         this._8f6e5631910c234469807e8e.moveHandler = this._8f6ada3ff41f1d4b2c1c8c03;
         this._bf876f2f81cd0dbe7a45ecbc();
      }
      
      public function set mainInterfaceScroll(param1:ScrollWrapper) : void
      {
         this._c7c784a8d062d6d048510fb6 = param1;
         this._c7c784a8d062d6d048510fb6.moveHandler = this.scrolling;
         this._2b47353f5782ebadbde809b7();
      }
      
      public function get mainInterfaceScroll() : ScrollWrapper
      {
         return this._c7c784a8d062d6d048510fb6;
      }
      
      public function get badge() : DisplayObject
      {
         var _loc1_:int = -113302837 ^ -872893363 ^ 0x19EC2771 ^ 0x15B6F17D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x477EC7B1 ^ 0x70C92DEA ^ -749356226 ^ -629206546))
            {
               case 0:
                  this._6365243991118b9c824b4de3();
                  _loc1_ = -1926778181 ^ 0x5729F7AC ^ 0x2CCD9205 ^ -933324901;
                  break;
               case 1:
                  if(this._b8503324a30ebc71ef328e61 == null)
                  {
                     _loc1_ = -1380635968 ^ -813729374 ^ -1222724671 ^ -347496408;
                  }
                  else
                  {
                     _loc1_ = 0x0DF67BEB ^ -451380398 ^ 0x6AB19EF4 ^ -1128079676;
                  }
                  break;
               case 2:
                  return this._b8503324a30ebc71ef328e61;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6365243991118b9c824b4de3() : void
      {
         if(this._b8503324a30ebc71ef328e61 != null)
         {
            return;
         }
         this._350c461898c76ba48959239e = DisplayObjectContainer(DisplayObjectContainer(DisplayObjectContainer(this._bea9fe7c18485d42ef37aa21).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဓი၆ႪႼთ၎კႨတႵႄ႖ဏႤႦၹ၇ჼჁჺၿ႖ვჁტှမ၅သဳ့႙႙ၴညၧ჈ၡ႟ჳა","ၿာၵစနြႿჳ့၃Ⴘဌ႗႗ჵဏ"))).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揋掍揿捛掘挏揷捲揚挷挕捫振捣掣挳掎揋捡捚捀揵掤捊捰揶捲揾捙挨捠挌挽揼挌捐捖捸揙掠揃掌捑揯","揩捛挦掱捲捤揼握握捤揰捔挑捧控捤")));
         this._bf1bfe12891c68e53d011b92 = TextField(DisplayObjectContainer(this._bea9fe7c18485d42ef37aa21).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉勂务勍勠劣則剕劕削判劧勔刚剓勯切刲刚刍劽剉刨勡","刎勇剓劥劈剋劣刚剙別勐勪剃刘劈劝")));
         this._987c0e9315eeb9fc44427651 = TextField(this._350c461898c76ba48959239e.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုႴზႠჂႣ჈ၢဲႡ၍ဍဗဦჺၮႶဇုယၸჿစჵ၍ဇဢႛႝ႘ჳၞႩရჁႅၭႜ","ႃ႓ၙჅႹၺၷၶဴဥႽႃႛဦ။ჟ")));
         this._2e231d39f50b537f8c3bfc1a = MovieClip(this._350c461898c76ba48959239e.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勣劝刄删剹勉勉勪劖勨剬勜勅勇劑勵勬勌勃创剙勖初勻劤劆","剉劦刋勪剝剗刎劃劵勴刷划劣勬刿労")));
         this._4040beedacd960d4daf916be = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳劙删劖刣創勀剠刉剉劘劲刎列刁劊到劏劧勡刁勫勬剺勅勴劗劥剞劐刀剐初剟副勜刍副前剏","劾剜務剫剨劮割剃剏判剀勏劾刐募努")));
         this._acc10ad8aa218b3684e7b9ef = MovieClip(this._350c461898c76ba48959239e.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲捿插掌捙挈掿捗掯挢揜捎捧援探捂揪捯挰揅揭排掛揬挘捚掊掍掻挙捌据挌揑","掀捡掷掤掣掴揘捘掺挄掏捍揭据掰挮")));
         this._36effc263d2afd9fe33cfd5c = DisplayObjectContainer(this._2e231d39f50b537f8c3bfc1a.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙創勹初制前劰劇勲劃劄劉劑劾勳劊剧剷刏勠勭劓","剕剎剟劲勧刮劥刘劂刃勅勫劺則削勷")));
         this._eafcd3f1e6480b041a51ce35 = DisplayObjectContainer(this._2e231d39f50b537f8c3bfc1a.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揧捻授挑损捶捈揰挂掃揵描捀挟掐揭挖揂揅捣持揰捴挚掾捰","揾揊挕掩挨揬捂掽揽提掇掬挓捽揂捤")));
         var _loc1_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴ႞ဴဥၞ჻Ⴓვბჹႎ჏ၔႩႉၲ႕းႳႹ႓ჺထၤႷ၏სႡဗဤဵႄူၹჵკ၌კႧႲႱ႒ႱჲჅဝ","ჷဿှႇႂၟႴႋိჸၘჹၦჸჴ჊")));
         var _loc2_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刅刓刞動勨刲劇刦劦劘劃刵劢劳剨勉刈勚则剿刕勞刮勍剥勜勜勜剠別劽劖勾労剶劥勅刈剕勣","刦勭劫劺勺刉剸刊勆剈剕剫勚劈勯刴")));
         var _loc3_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揀揽挹掍捃捽挸挪捣揜掂掘捑挷捹捑揈揋挛掖揀捏挭捡揝揅捡掛掑挪揥掖揬挐挳捪捥挿探捄挄掕","捂掗捽挚揈掗掸挷揂掎掗捏挬捬捴掷")));
         var _loc4_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍刈勴剁勢力刳劖剘剙勹勷勶劔剪勏勉刽劜劓劎剅励剰勝刧勼刄剏剮劻分勨动刀劙剬剦剴刢","刌勚剨剭勧劣劚剚勷創剁刊劥割劣劜")));
         var _loc5_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("უႂႶၠხძႆႁაქၒဆမჭၟဓျ჌ဂဧၵင၂ႋဳၡၴგၟအစႡြ၁აဿ၈ြ","ႊႵ၉Ⴆတდ႕ၮჺပႲ႑ဋჟიႊ")));
         var _loc6_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶挌捪掷据捙挈挪捭揳揍揈掗揦掤援挏掸掙揭掜挎挦挲揧挤指提揰掋揧揘挺換","挓捅掹揂揌捞挃揵挎捕揈捋挾捆捊挻")));
         var _loc7_:TextField = TextField(this._2e231d39f50b537f8c3bfc1a.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剻勷劅勲勵剬剖刴劶勭勽剰劾劶剖剐劅劊劑刐刾勢创刨劋勱剷劓勺劜","劷効剚剕勊剑劑剡勋劭劅劘勢刀刁勢")));
         this._3238e0125f2ad8921c38fc7c.process(this._2e231d39f50b537f8c3bfc1a.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴌၞ၁ၪျစအဓ႗ႢၔღႫဦၔ჎ჽო႟ჹၯნდၽႲႦ၍ၧ჊ှႁ၆ჼႿღၴဇၶზယჁ჋","Ⴀპ჏ႂ჻ၖၒဵეဂၕ၁ၫ။მჲ")));
         this._b040d99b610629031611ba9a.process(this._2e231d39f50b537f8c3bfc1a.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍勉剛劁剣剏刨列刢剘刺刚剈劓劂劀勒刐勝勫剸刷刡刖刣劁刖励励刡刦勐刚劜剮则劆刽刡勿劋剼刋剉","刅勿劖制勊勏勶刊刼剕刘券制刴劍剘")));
         this._cf894f2a015bcb849c701ebf.process(this._2e231d39f50b537f8c3bfc1a.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၻႡႹႇჯယးქჹ჌ၲၰ၅ု်၇ၩშဧႥႇၰ႗ၱყႷၹႲჅ჌჈႙Ⴃ၏႞ဓძ჏ჩႊခာ","ჺႸကဩႰქဗႤႨნၐၝႚႶၪၐ")));
         this._86c9b5625dd2ef8e9caaea37.process(this._2e231d39f50b537f8c3bfc1a.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ლღႝ႕჉ဓႦოဿၐၕႏიჟရုၺဃတႣႦၥၔ႖ၪჲႇၙ္Ⴠ႒ဨဃႿၱკ჉ၼ႘ၗ","ငၔႴ჈ိၨ႑႕ჺဢ၃ဍဘေ႕က")));
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剖労别劅动刬割勈刉剴剐剪势刘勡劍剠劶剷勈劈刑劷勀剜剐刖劳劾剔剓剳刴勒剌勾勀刢劕劵勴前剙剤剃务利务劂勘勈劬刭刔勼力","勷剫削剪刏剻划剨刖割劔劄勾刢勸剧"));
         _loc2_.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗剱勝刃勶刴勁勚刻劏募勽刨务劳勎劽勨剋剀剤勌剱刈剕刉剔剨剖刜勨剤剐勽勭勎劫刟删勗力勝刣勾勷劫剖刌","劋剧勴劋剻剤功剀劵别刈剂刚剋判剸"));
         _loc3_.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖဴၧ႖၎ၪှဳ၍ၗဈსႠტჭဋჾး႙ၹ္ငႄჷႆბ၌რၺ჈ၠၤ႐ႛ႒ჲႾဨယၧဢဧႩၴဃზၶႧ჉ტ჎ၹ","დၖსჸჿვရპႳშၚქႸ႗ၙს"));
         _loc4_.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刕剟労剞刘动劃刳刐剒劰募删刾勣劣勋功勝刣刽劭剄勰務剼则勣劏助剛剧刐劦刭剒勩勍劻勅劶刑勃刡劧刦勺勃剿剨刿刿切勏勪加剷刢剎刘刁剼","刵劬剔勿劬刔劣勈劧勾制剕効刯剖劯"));
         _loc5_.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔ႦႦႢႍჃၢႪၞႬრჩ႕၃ჯဢ၇ုႎၘჾၠ႙დႤဠ႙ႳဥႠႬႿၹ჆ဗဪ႕჻ၔႧჷၬვၠၾႂ၏ჰ","၏႞Ⴣယ၁ၲဆဇ၏ჄႃုჅ჻ၡႡ"));
         _loc6_.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰劓剣劮删刏助勒剈勀切勬剕勒則刢刔劗剈勸刭剹势勝剑刓剺劦切剽刮勍勮刧刴勜動劚刅勸剳勡剃勫劸劄办剨剭勤劇劦","力划刃劉刁划刐剶劊动刕助剁勼勡刟"));
         _loc7_.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჆ဢၹკჯჷႾჳဲဒံ჈ს၍რ၍Ⴧႈ჊ႸၡბႲႤ႟၎ႅၨ႟ဂၯ႟ဏၥဩ၈ႣဏႥ჋႗სგხ჉္თჯ","ၤၗၽဎჁညဤဃာႂႹვၕၻဘმ"));
         this._b8503324a30ebc71ef328e61 = this._36effc263d2afd9fe33cfd5c.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勁劚剩剒刊剦副刈劤勏刡剡努勤刢劚判勆勠列勓劢勩刕削利劅剂剓勬剺勚効刔剺分創刀剖劻劷刴勁划剝劚劢劽","劥刪剔刄剏剸劓勚勦剃劎勝劂功劄劾"));
      }
      
      private function _bf876f2f81cd0dbe7a45ecbc(param1:Event = null) : void
      {
         if(this._8f6e5631910c234469807e8e != null)
         {
            if(param1 != null && KeyboardEvent(param1).keyCode == Keyboard.DELETE)
            {
               this._8f6e5631910c234469807e8e.visible = false;
            }
            else
            {
               this._8f6e5631910c234469807e8e.visible = this._4040beedacd960d4daf916be.maxScrollV != (-303214743 ^ -769027121 ^ -157518839 ^ -916936530);
               this._8f6e5631910c234469807e8e.setHandlerSize((0x4E720EF6 ^ 0x3808C41D ^ 0x1808AD55 ^ 0x6E7267BF) / this._4040beedacd960d4daf916be.maxScrollV,0x791186C9 ^ 0x43899640 ^ -221264735 ^ -933768166);
               this._8f6e5631910c234469807e8e.percent = (this._4040beedacd960d4daf916be.scrollV - 1) / (this._4040beedacd960d4daf916be.maxScrollV - 1);
            }
         }
      }
      
      private function _2b47353f5782ebadbde809b7() : void
      {
         var _loc1_:Number = NaN;
         if(this._c7c784a8d062d6d048510fb6 != null)
         {
            this._c7c784a8d062d6d048510fb6.visible = this._350c461898c76ba48959239e.height > this._5ca95efbe2e007b39736e753;
            this._c7c784a8d062d6d048510fb6.mouseScrollArea = this._a6122114f557920f1384503f;
            this._c7c784a8d062d6d048510fb6.listSize = this._350c461898c76ba48959239e.height - this._5ca95efbe2e007b39736e753;
            _loc1_ = this._5ca95efbe2e007b39736e753 / this._350c461898c76ba48959239e.height;
            this._c7c784a8d062d6d048510fb6.setHandlerSize(_loc1_,-650306826 ^ 0x1AC9E5F9 ^ 0x3B654ED7 ^ -124669462);
         }
      }
      
      public function set mouseScrollArea(param1:DisplayObjectContainer) : void
      {
         this._a6122114f557920f1384503f = param1;
      }
      
      public function setData(param1:_cff30366d510ea862540bfef, param2:_21587f0ac0bcbbbfdcd63026, param3:_b6959442d774100015b69ffa) : void
      {
         this._bf1bfe12891c68e53d011b92.text = param1.displayName;
         this._adaa6eddd80cec62b19b1839(param1.displayDescription);
         this._4040beedacd960d4daf916be.text = _a8d907fd0d19c674da3a32f4._b5b3451a5e0f6e6065cc6b3d(param2.notepad);
         this._3238e0125f2ad8921c38fc7c.text = String(param2.countTotal);
         this._b040d99b610629031611ba9a.text = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(param2.average);
         this._cf894f2a015bcb849c701ebf.text = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(param2.biggest);
         this._86c9b5625dd2ef8e9caaea37.text = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(param2.biggestServers);
         removeAllChildren(this._36effc263d2afd9fe33cfd5c);
         var _loc4_:_52a40137cca5cae034297601 = new _52a40137cca5cae034297601(_24ae1e2b87a720b9e746eb0c,0x54763A0F ^ -436025412 ^ 0x4FB5D05C ^ -37671446,0x71C65637 ^ 0x72F07EF7 ^ 0x2107CE9E ^ 0x2231E65D);
         _loc4_._2e9466f75d66a9fa2afad4d1(_72349374ad0f1a87608f224b(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၪႮႌဆႣდၰႌჭჶჽွံႌႇႛႏႺხဿဝႵწဪႮჃ","ႣმჅႭჭဆ၁ၛႷႬႅჱႎႍ၈Ⴎ"),param2.locationIds,param3));
         this._36effc263d2afd9fe33cfd5c.addChild(_loc4_);
         removeAllChildren(this._eafcd3f1e6480b041a51ce35);
         var _loc5_:_52a40137cca5cae034297601 = new _52a40137cca5cae034297601(_3e6de61e64a81fd83c912416,-502892869 ^ -2043052787 ^ 0x35B9AA1C ^ 0x5186A1AF,-1908853572 ^ -1388865027 ^ -67894780 ^ -654659770);
         _loc5_._2e9466f75d66a9fa2afad4d1(_0434fc4067b11fe48fbb626b(_72349374ad0f1a87608f224b(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍排掿授接掩捗挮捔掘挦捚掸揗捣挐挝揥","挑掛挀揋掇揤掵掙掂揱挹掤揿掜揦掃"),param2.baitIds,param3)));
         this._eafcd3f1e6480b041a51ce35.addChild(_loc5_);
         this._4040beedacd960d4daf916be.addEventListener(KeyboardEvent.KEY_DOWN,this._bf876f2f81cd0dbe7a45ecbc);
         this._bf876f2f81cd0dbe7a45ecbc();
         this._2b47353f5782ebadbde809b7();
      }
      
      public function _d4b1c56b0151193ecf216f7d() : void
      {
         this._c7c784a8d062d6d048510fb6.reset();
         this._8f6e5631910c234469807e8e.reset();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._bea9fe7c18485d42ef37aa21.visible = param1;
      }
      
      private function _8f6ada3ff41f1d4b2c1c8c03(param1:Number) : void
      {
         this._4040beedacd960d4daf916be.scrollV = Math.round(param1 * this._4040beedacd960d4daf916be.maxScrollV) + (-451379668 ^ -1512066800 ^ -1296542240 ^ -226518307);
      }
      
      private function scrolling(param1:Number) : void
      {
         var _loc2_:int = this._350c461898c76ba48959239e.height - this._5ca95efbe2e007b39736e753;
         this._350c461898c76ba48959239e.y = _loc2_ * ((0x65AA6CFE ^ -2034115503 ^ 0x535106BC ^ -1338329582) - param1) - _loc2_ + (-1498547493 ^ -1853441978 ^ -1915728193 ^ -1157952425);
      }
      
      private function _adaa6eddd80cec62b19b1839(param1:String) : void
      {
         this._987c0e9315eeb9fc44427651.text = param1;
         this._987c0e9315eeb9fc44427651.height = this._987c0e9315eeb9fc44427651.textHeight + (-1386161220 ^ 0x1C1F8142 ^ -1870778282 ^ 0x21016AA0);
         this._acc10ad8aa218b3684e7b9ef.height = this._987c0e9315eeb9fc44427651.height;
         this._2e231d39f50b537f8c3bfc1a.y = this._acc10ad8aa218b3684e7b9ef.y + this._acc10ad8aa218b3684e7b9ef.height + (-2101601708 ^ 0x39244590 ^ -405714516 ^ 0x5C491662);
      }
   }
}

