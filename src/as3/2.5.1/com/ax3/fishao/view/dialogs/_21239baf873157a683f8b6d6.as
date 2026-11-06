package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.ExtendedMovieList;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.worlds._fc0ad21ef0bdcb5d775a5005;
   import com.ax3.fishao.view.wrappers.impl._ed78a7fba29dd220c5e19bbc;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import protocol.sr.EnterWorldErrorResp;
   import protocol.sr.UpdateResp;
   
   public class _21239baf873157a683f8b6d6 extends _57193d8e1bc1832fa54e02a5
   {
      
      private var _d6aa7c0a1a060be01cacd299:ExtendedMovieList;
      
      private var _a36e71eec2f173f5d116af6f:Boolean = true;
      
      public function _21239baf873157a683f8b6d6()
      {
         super();
         tabChildren = false;
         var _temp_5:* = this;
         var _temp_4:* = §§findproperty(ExtendedMovieList);
         var _temp_3:* = -1316423227 ^ 0x537CD87C ^ 0x5E457B1D ^ -1129227611;
         var _temp_2:* = -346559538 ^ 0x231B63C5 ^ -213246950 ^ -990286866;
         var _temp_1:* = -1632492420 ^ -970855596 ^ 0x7AB1FF55 ^ 0x2222307D;
         _temp_5._d6aa7c0a1a060be01cacd299 = new ExtendedMovieList(_temp_3,_temp_2,_temp_1,_temp_1,true);
      }
      
      private static function _75ff4b9a637da6d8cbb93920(param1:Object) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = {};
         if(param1.data.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捫挄掹捷揢挾挢挅揌提掰揉掣挆挾挠","揞掴揇揋捛掖挨揞捍揹掌掭掳掶掬揅")))
         {
            _loc3_.hair = JSON.parse(param1.data.hair);
         }
         if(param1.data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劆勫动刭劀劋剷勠剼勬勱剔刳劕劯刞刴勋","劄刵刀券勶劐刭剡前刢势刢刅务勚刣")))
         {
            _loc3_.upper = JSON.parse(param1.data.upper);
         }
         if(param1.data.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქჱႆႼგ჆ძჰღဪၵု჊჏ၗ်ၶၗ","ၥျဣჩႡ႘Ⴋ჌ჟჍღ္჎჌ႆဟ")))
         {
            _loc3_.lower = JSON.parse(param1.data.lower);
         }
         if(param1.data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勾劜勃創剧列勉剿剄割剶剾劦剌勘刳动剸","勨制刟刏劦勁剝勾勫剴動利勡劫劄劌")))
         {
            _loc2_ = JSON.parse(param1.data.shoes);
            if(_loc2_.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃ჋ႇ၄Ⴁ၄၉ჯၷ႕","Ⴎႂ့ႵၦყႩၠ၊ႇေႻဒ႞ၫႃ")))
            {
               _loc3_.shoes1 = JSON.parse(_loc2_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("则劶刘劸刂劓刈劂勧劌","刚勅劁功剮刚刞刣勰勓勯努勾剢刽劯")]);
            }
            if(_loc2_.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刵剀劷动劂劕勀剀刔剆","剌勅刕刲剨勷剆勔勒劆劐剓剓制刵勔")))
            {
               _loc3_.shoes2 = JSON.parse(_loc2_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႘Ⴐ჉ႃဦၮႶဿჸ჋","ၓწၰႅ၈Ⴛဋ၎ႁჿႥဌၳ჻ႫႬ")]);
            }
         }
         return _loc3_;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:String = null;
         var _loc2_:_fc0ad21ef0bdcb5d775a5005 = null;
         var _loc3_:DisplayObject = null;
         super._935ac2966ddad68dfc449202();
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc5_:Array = GameSwf.instance.managerWorlds.worldsList;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = _worldLineFactory._a54f7898880d608c7e1dc342();
            _ed78a7fba29dd220c5e19bbc(_loc3_)._8df196b7942c5902ae901197(this._53d62a730de408f9ee81df66);
            _ed78a7fba29dd220c5e19bbc(_loc3_).entity = _loc2_;
            _loc4_.push(_loc3_);
         }
         this._d6aa7c0a1a060be01cacd299.setList(_loc4_,-333135861 ^ 0x3BED4E60 ^ -399161054 ^ 0x3FFCC748);
         listSet.addChild(this._d6aa7c0a1a060be01cacd299.getList());
         viewsListHSlider.visible = _loc4_.length > (-486434167 ^ -727255443 ^ -583294947 ^ -358822672);
         viewsListHSlider.moveHandler = this._5b84d1950aa06534efc8de72;
         viewsListHSlider.mouseScrollArea = worldListContainer;
         viewsListHSlider.listSize = this._d6aa7c0a1a060be01cacd299.height;
         viewsListHSlider.setHandlerSize((0x09632841 ^ -266845060 ^ 0x63B834BC ^ -1698473848) / _loc4_.length,-545316760 ^ -1034877526 ^ -549046096 ^ -1033364160);
         title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰劔刯勝剌剁剉勼劍勷勸勷劶剌刔剴剃剂务刜利劊刯劾剂刌劊刽勚劦","刋剙剗刑剘劮劸劖劈列劥勴刢刖剮刌"));
         serverName.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捔捐揝揫掸揥挈挘揥掝排探捒捤掁揎掛掜","捡挆揠揍插揩揾揓挻挖掘掂掬挳捹据"));
         users.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挈捂掊揗捏挵措控掙掕掫指挱捠挃掝捅挟掰掊揗捋","掻挽掶捌捺揋捸挹揮揻捄挸挵挂接捩"));
      }
      
      public function _53d62a730de408f9ee81df66(param1:_fc0ad21ef0bdcb5d775a5005, param2:Boolean = true) : void
      {
         this._a36e71eec2f173f5d116af6f = param2;
         _loadingIndicator.start();
         _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(_loadingIndicator);
         GameSwf.instance.managerWorlds._5ced0f54853896560eac445a(param1);
         _dfa25706e58a240c1e33e5c6.loginFscExtension._52f0054af78784d519fe5f84(param1.id,app.sid,param1.url,this._001ab07168ded106b31cb929);
      }
      
      public function _13c08e4b1ab096d46e3a106b(param1:String, param2:String, param3:Boolean = true) : void
      {
         this._a36e71eec2f173f5d116af6f = param3;
         setTimeout(_dfa25706e58a240c1e33e5c6.loginFscExtension._52f0054af78784d519fe5f84,0x3FBC72CF ^ -211858047 ^ -1185473903 ^ 0x75B4220F,param1,app.sid,param2,this._ec2d1d28ea273c8d07f6f8a1);
      }
      
      public function _3bb607a8cc1a7a72edfb5b5c(param1:String, param2:String, param3:Boolean) : void
      {
         var worldId:String = param1;
         var url:String = param2;
         var destroyCurrentLocation:Boolean = param3;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _4241310b987c3b8ef22d8e03(param1);
         };
         this._a36e71eec2f173f5d116af6f = destroyCurrentLocation;
         _dfa25706e58a240c1e33e5c6.loginFscExtension._52f0054af78784d519fe5f84(worldId,app.sid,url,callbackWrapper);
      }
      
      public function _672c829d2eecf79dfbd91436(param1:String, param2:String, param3:Boolean) : void
      {
         var worldId:String = param1;
         var url:String = param2;
         var destroyCurrentLocation:Boolean = param3;
         this._a36e71eec2f173f5d116af6f = destroyCurrentLocation;
         _dfa25706e58a240c1e33e5c6.locationExtension.leaveLocation(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            var response:_5e1bab759fcaea6d1f84faa7 = param1;
            var callback:* = function(param1:_5e1bab759fcaea6d1f84faa7):void
            {
               GameSwf._f35f9efdcdbec3f226f7f673();
               GameSwf.worldMap._dd567f2dc6062b728de1617c();
            };
            _dfa25706e58a240c1e33e5c6.loginFscExtension._52f0054af78784d519fe5f84(worldId,app.sid,url,callback);
         }));
      }
      
      private function _4241310b987c3b8ef22d8e03(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(this._001ab07168ded106b31cb929(param1) && GameSwf.worldMap != null)
         {
            GameSwf.instance._9f8b906a1b0d313009d0b21d();
         }
      }
      
      private function _001ab07168ded106b31cb929(param1:_5e1bab759fcaea6d1f84faa7) : Boolean
      {
         var response:_5e1bab759fcaea6d1f84faa7 = param1;
         GameSwf.instance._1af809001092e3e47646e1f1();
         _loadingIndicator.stop();
         _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(_loadingIndicator);
         close();
         if(this._a36e71eec2f173f5d116af6f)
         {
            GameSwf._37858dbe166565737ab21827();
         }
         else
         {
            this._a36e71eec2f173f5d116af6f = true;
         }
         if(response is UpdateResp)
         {
            try
            {
               this._81ea3c39782f3efb68ae2f23(response as UpdateResp);
               this._6157165cd598bb0807803c32(response as UpdateResp);
            }
            catch(e:Error)
            {
               Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢勧务勀刃劽力删勂勓刨剮創剠刖劋劼劐剟刯則剮勮劵劔劭劼剎刴刖劈効刬剡劣刚刖剝刴剼勿剫刷剳剟勃别労勓剬劤劒劷劖剚劒剆刱剴剆勎劵劣剑刞劫劋剛勶剐刱勃剖劍務勋勸助刜剽勍劰劸剝券剈剑劎劖勢","剜剐勅勸刯勨刴剽劮劵刂勸刘刃剪刈"),e);
               Cc.error(e.getStackTrace());
               GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ေ်ჅဨမბჇშဲထနၥႈဵၷွოოႹၥႥ჈႖ဖჴქ჌ၲ","ာ჆ၰၐკႄიႾၜႈ႐Ⴆ႞႕ႸႤ"));
            }
            return true;
         }
         if(response is EnterWorldErrorResp)
         {
            this._a32341e5e51ecc073ef1dad7(response as EnterWorldErrorResp);
            return false;
         }
         return false;
      }
      
      private function _ec2d1d28ea273c8d07f6f8a1(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var response:_5e1bab759fcaea6d1f84faa7 = param1;
         close();
         if(this._a36e71eec2f173f5d116af6f)
         {
            GameSwf._37858dbe166565737ab21827();
         }
         else
         {
            this._a36e71eec2f173f5d116af6f = true;
         }
         if(response is UpdateResp)
         {
            try
            {
               this._81ea3c39782f3efb68ae2f23(response as UpdateResp);
            }
            catch(e:Error)
            {
               Cc.log(response);
               Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဓႿဝွტဤჸးဵႨၶჿჟჼၦၢဴჹႮ်ჴၳ။ပ၍ყ၃၄ၦფခკჵၥჅ၅ယၵთႱႫႋာႼၛၴბဃ၍႐ၒၲၓჯၵ჋ქდ၀ქ႘ၐზႫႴူၟ჋გლဇႬႨႻၜညဣၪႻႋၺ်ჅჶႡၬჃჾ႞့႖၆ဢთဃძႝ်၅ၚဥႦဓမ","ႭၚဦსუၖၘၴၐဃဓჀ၄ჹၮႀ"),e);
               Cc.error(e.getStackTrace());
               GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႮႵႪႭၜჩპၥဆნၥဍႍქႡႝဤჂ၅ცლဦჃ႟ჩၖ့ဲ","ჄဝၨဴყဢႠဉႾရფၰ၅უဆဗ"));
            }
         }
         else if(response is EnterWorldErrorResp)
         {
            this._a32341e5e51ecc073ef1dad7(response as EnterWorldErrorResp);
         }
      }
      
      private function _87b25e5887393bf919982ae8(param1:MouseEvent) : void
      {
         GameSwf.instance.managerWorlds._ebc390996b60ec28ad0c11a7(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._9c92db500f1b7d13166a0950));
      }
      
      private function _a32341e5e51ecc073ef1dad7(param1:EnterWorldErrorResp) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = app.dialogFactory._5afc77ddaa6019528749a6fb();
         _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揔捉揰挱捄捤挰捌掛掮揎掕挪挌揂挶掗捌握授揯揀揣挸挠揵揥捵掿授掵捎掔据掘掼掠捦揲挎挴揨","捯指挈描捝挈排揄捓挽掟揂掂捹挄掫")));
         _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.okButton.addEventListener(MouseEvent.CLICK,this._87b25e5887393bf919982ae8);
         _loc2_.show();
      }
      
      private function _6157165cd598bb0807803c32(param1:UpdateResp) : void
      {
         var _loc2_:Object = decodeJson(param1.data.charView);
         GameSwf._f35f9efdcdbec3f226f7f673();
         GameSwf.worldMap._dd567f2dc6062b728de1617c();
         var _loc3_:Object = _75ff4b9a637da6d8cbb93920(param1);
         close();
         GameSwf.instance._74f6678be6883d7c730f19ee(_loc2_,_loc3_,param1.sid);
      }
      
      private function _81ea3c39782f3efb68ae2f23(param1:UpdateResp) : void
      {
         app.user.isModerator = param1.data.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸႻႭჟႂႢႊႅჁဋပၕေჇဵ႓Ⴂჿီႀ်ႜსဘၘჸဿဳလၛ","ၩ჻ၻဘဖ။ြ჌ၶၴၑၖါႥჭၑ")) && param1.data.isModerator == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭捅掏揃挂挖掶揧掘揎捃授挸掁掭捸","捬控揹捼捍捳掓揌挵捤掕掣捎探换揍");
         if(Boolean(app.user.isModerator) || true)
         {
            Cc.config.enableKeystroke = true;
            Cc.config.commandLineAllowed = true;
            Cc.commandLine = true;
         }
      }
      
      private function _5b84d1950aa06534efc8de72(param1:Number) : void
      {
         var _loc2_:int = this._d6aa7c0a1a060be01cacd299.height - (0x66442117 ^ 0x2FB07D98 ^ 0x73DB3B26 ^ 0x3A2F6605);
         this._d6aa7c0a1a060be01cacd299.y = _loc2_ * ((0x79ECEE44 ^ 0x516D3104 ^ -1572139217 ^ -1966419858) - param1) - _loc2_;
      }
      
      private function _9c92db500f1b7d13166a0950(param1:Object) : void
      {
         show();
      }
   }
}

