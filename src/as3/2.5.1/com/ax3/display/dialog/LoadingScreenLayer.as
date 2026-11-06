package com.ax3.display.dialog
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.net._1df7546ca5f8408eb2ee7907;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.inkora.tween.TweenCube;
   import flash.display.Sprite;
   
   public class LoadingScreenLayer extends Sprite implements _69eec7d2f73604da25ccda04
   {
      
      private var _20177df0731a5d7527728e90:_141a5f7d84a4cfae1680515b;
      
      private var _70f3efe0a5421662b0d6774a:Vector.<_f11f4587bdf083a8dd45aa84> = new Vector.<_f11f4587bdf083a8dd45aa84>();
      
      private var _c929f304422807e378d411a8:_f11f4587bdf083a8dd45aa84;
      
      private var _c388ca7cd858184526ec5c2b:String;
      
      public function LoadingScreenLayer()
      {
         super();
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勵剽劈剆剐勶刷剐剪勴初劂刊刼剠勷刐劶劍剁剘刅刭動劎刽力勌刌刍利划劓刑勴剆剕剎劯刺劈勲劗劜","劽剄勽刑剹劷刈剰刓剗劊剼力剮刪剸");
         this._20177df0731a5d7527728e90 = new _141a5f7d84a4cfae1680515b();
         addChild(this._20177df0731a5d7527728e90);
      }
      
      public function set type(param1:String) : void
      {
         this._c388ca7cd858184526ec5c2b = param1;
      }
      
      public function _3d35206e41147b98a9825d65() : void
      {
         this._20177df0731a5d7527728e90._2381b76b21d53e8dc993bc29();
      }
      
      public function set percent(param1:Number) : void
      {
         this._20177df0731a5d7527728e90.percent = param1;
      }
      
      public function hide() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၝႣჯ႔ၤႭ၌ჄဍႄဆႨဩႺဧႡჳၿ჋႟၂ႇႲ႓","ၥ႔ႍႽဌჹ჎ဃႢၿေიႝ႞ၴၫ") * alpha,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揸掾指挫挽揦掛掉挧掝挟挟挸掍捔揶揕揗","捖挾捸捏挗揌挌揟捡捒挴掽揉挭挦掂")):-1667685241 ^ 0x07066CA6 ^ -1039717210 ^ 0x59986487},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭捕掫掀捚掱捲捨揟揜掭按援揘掕掾揹描掝掉捻描捌捎捑掊揪掹","掑挽捕捓揅揍挄挪捡揽捷捛挏捬挜挑")):this._f616d1a9858edd3b4e866ba4});
      }
      
      private function _f616d1a9858edd3b4e866ba4() : void
      {
         visible = false;
         this._20177df0731a5d7527728e90.clear();
         this._c929f304422807e378d411a8 = null;
      }
      
      public function show() : void
      {
         var _loc1_:int = -924474639 ^ -1769762387 ^ 0x0BE78FF3 ^ -95199977;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x1961D29D ^ 0x677D3A10 ^ -87817611 ^ 0x2B0A0B41))
            {
               case 0:
                  this._20177df0731a5d7527728e90._c303a207e4e800ce00f7bd66();
                  TweenCube.destroyTweensOf(this,false);
                  TweenCube.to(this,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揵挱振揯掛换捄掯揉捰捊捲换挑挄捺揀捍指揺捃掲捚捐","挺揰授挟掎挙捔捈捜揇捷掑掠捤揎掐") * alpha,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揈揤掆掲掑掰排捇挬掰掾捵捶捋揋捞捣揸","揢挳掴挩揓捎挍掻捆措挓掋掲挔挆掓")):0x2C7BC42F ^ -1707909608 ^ 0x172DA6AD ^ -1587200869});
                  return;
               case 1:
                  if(visible == false)
                  {
                     _loc1_ = 0x552A6F58 ^ 0x0FB71E9B ^ 0x54FAF925 ^ -1581946531;
                  }
                  else
                  {
                     _loc1_ = -807567049 ^ -440640006 ^ -1974357557 ^ 0x0FE28CBF;
                  }
                  break;
               case 2:
                  alpha = -706832460 ^ 0x362A0AD4 ^ -1967096130 ^ 0x6934E3DE;
                  visible = true;
                  _loc1_ = 0x4BD28F08 ^ -283774857 ^ 0x4BC78EA9 ^ 0x40D2106F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _73bc65955b0f014b23436384(param1:_f11f4587bdf083a8dd45aa84) : void
      {
         var _loc2_:int = 0x1D22B028 ^ 0x7EBE309C ^ 0x6711EEF4 ^ -200369741;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1530514877 ^ 0x340637AE ^ 0x6E0334B5 ^ 0x0E40C6A8))
            {
               case 0:
                  this._70f3efe0a5421662b0d6774a.splice(this._70f3efe0a5421662b0d6774a.indexOf(param1),0x2117D501 ^ 0x7AA0E491 ^ 0x2C416838 ^ 0x77F659A9);
                  _loc2_ = 0x7E3F80D5 ^ 0x1DC48B8F ^ -233969643 ^ 0x617514BE;
                  break;
               case 1:
                  var _temp_2:* = this;
                  var _temp_1:* = 0x7218F136 ^ 0x3E58A112 ^ -1675652059 ^ -799030271;
                  _temp_2.update(_temp_1,_temp_1);
                  return;
               case 2:
                  this._c929f304422807e378d411a8 = null;
                  _loc2_ = 0x2C26EFA6 ^ 0x3E59E3F5 ^ -1924208326 ^ 0x6FB21298;
                  break;
               case 3:
                  var _temp_4:* = this;
                  var _temp_3:* = -1682571272 ^ -1055009471 ^ 0x06F140F7 ^ 0x5C596A4E;
                  _temp_4.update(_temp_3,_temp_3);
                  if(this._c929f304422807e378d411a8 == param1)
                  {
                     _loc2_ = -339346906 ^ -664428066 ^ -1483457722 ^ 0x64B7974C;
                  }
                  else
                  {
                     _loc2_ = 0x3303FCCB ^ 0x16A1FA ^ 0x4DFB20F5 ^ -1905423820;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2b080f46e549b4b5a001764c(param1:_f11f4587bdf083a8dd45aa84) : void
      {
         this._70f3efe0a5421662b0d6774a.push(param1);
         this._47c6fe16736df8d41b168099();
         var _temp_2:* = this;
         var _temp_1:* = 0x330023B6 ^ 0x7A1120BB ^ 0x40F80B2D ^ 0x09E90820;
         _temp_2.update(_temp_1,_temp_1);
      }
      
      private function _47c6fe16736df8d41b168099() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
      }
      
      private function _9fa4505008bc3bfe9f616af2() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = -1356986835 ^ -1174631300 ^ 0x41E9796D ^ 0x50A94FAE;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-290729125 ^ -2067296456 ^ 0x04EE0826 ^ 0x6920E8DE))
            {
               case 0:
                  this._c929f304422807e378d411a8 = this._70f3efe0a5421662b0d6774a.shift();
                  if(this._c929f304422807e378d411a8 != null)
                  {
                     _loc3_ = -493986307 ^ -586267306 ^ 0x6D9E10F0 ^ 0x55BCB4CA;
                  }
                  else
                  {
                     _loc3_ = -962718716 ^ -821957190 ^ -698126062 ^ -664914884;
                  }
                  break;
               case 1:
                  this.show();
                  _loc3_ = -366454724 ^ 0x65D00912 ^ -1072252298 ^ 0x484C57CE;
                  break;
               case 2:
                  this._20177df0731a5d7527728e90.percent = 0x165782F4 ^ -287673129 ^ 0x08C4D030 ^ -263641582;
                  this._c929f304422807e378d411a8 = null;
                  this.update(param1,param2);
                  _loc3_ = 0x42F774EC ^ 0x2DB085C8 ^ 0x0337AC26 ^ 0x6BD2E19C;
                  break;
               case 3:
                  if(this._c929f304422807e378d411a8._e4907aaeb95acdc5444b0b36())
                  {
                     _loc3_ = 0x5063D555 ^ 0x37C037CC ^ 0x0E82D2A9 ^ 0x6E838CA9;
                  }
                  else
                  {
                     _loc3_ = -825700008 ^ 0x73C2A5E4 ^ 0x239A9B55 ^ -1724755078;
                  }
                  break;
               case 4:
                  TweenCube.to(this,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掁捌揽掚掦掦挩捕捈掟挴捍掠揝挬掂捍揖掑排掐挻捲揽","捙挑掵揙揅挨捲掿揗捣捂捭挩揣捣揼") * alpha,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝၻဪႚၐხႶၲႎၙျ။ქဍဗဂဤၑ","ႎႷႨ႕Ⴑცႜၖ၃ႸႡჳ့၂႘ၻ")):0x6254CEF6 ^ -1607177498 ^ -1716868641 ^ 0x5BCA0DCE});
                  _loc3_ = 0x38050158 ^ -109686591 ^ 0x427B7F89 ^ -2069196148;
                  break;
               case 5:
                  return;
               case 6:
                  if(this._70f3efe0a5421662b0d6774a.length == (-897466384 ^ 0x4FC53572 ^ -47037398 ^ 0x7876CEA8))
                  {
                     _loc3_ = -1545166743 ^ 0x4838EF9D ^ 0x3FED837F ^ -745443300;
                  }
                  else
                  {
                     _loc3_ = 0x1B1E5EE8 ^ 0x188E3CF9 ^ -346284822 ^ -277953952;
                  }
                  break;
               case 7:
                  if(visible == false)
                  {
                     _loc3_ = 0x09872B29 ^ -1810634021 ^ 0x2FC04CDD ^ -1242156619;
                  }
                  else
                  {
                     _loc3_ = 0x24DA8AB5 ^ 0x31AF0659 ^ -506039982 ^ -218021592;
                  }
                  break;
               case 8:
                  TweenCube.destroyTweensOf(this,false);
                  if(this.alpha < (-1349235229 ^ -1447503491 ^ 0x459C9F15 ^ 0x43B00B8A))
                  {
                     _loc3_ = 0x280DCFD7 ^ 0x6FFD288F ^ 0x120C8B07 ^ 0x525ED0C0;
                  }
                  else
                  {
                     _loc3_ = 0x61165986 ^ -2036815883 ^ -931060822 ^ 0x28AD6145;
                  }
                  break;
               case 9:
                  if(this._c929f304422807e378d411a8 == null)
                  {
                     _loc3_ = -1268342200 ^ 0x0625BBB7 ^ -157404057 ^ 0x437F9105;
                  }
                  else
                  {
                     _loc3_ = 0x02D2AFF4 ^ -641764892 ^ 0x3A974D35 ^ -430428235;
                  }
                  break;
               case 10:
                  this._20177df0731a5d7527728e90.viewType = this._c929f304422807e378d411a8.viewType;
                  this._20177df0731a5d7527728e90._2381b76b21d53e8dc993bc29();
                  _loc3_ = 0x0B8A4192 ^ -173209966 ^ 0x433877BB ^ -1161982933;
                  break;
               case 11:
                  if(this._c929f304422807e378d411a8 != null)
                  {
                     _loc3_ = -286601875 ^ -795980863 ^ 0x4A14015E ^ 0x73D23B6A;
                  }
                  else
                  {
                     _loc3_ = -1754950777 ^ -1628863024 ^ -208708618 ^ -39718593;
                  }
                  break;
               case 12:
                  this._9fa4505008bc3bfe9f616af2();
                  this.hide();
                  _loc3_ = 0x3C9F28BA ^ 0x7BFB97C6 ^ 0x74E12277 ^ 0x3427219B;
                  break;
               case 13:
                  this._20177df0731a5d7527728e90.percent = this._c929f304422807e378d411a8._61c48819bae2aefd4ca585fb();
                  _loc3_ = -1565093805 ^ 0x3EBE426F ^ 0x5B540196 ^ -1057067212;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _489b0092c3eef0e4ccb10a26(param1:Function) : Function
      {
         var _loc2_:_1df7546ca5f8408eb2ee7907 = new _1df7546ca5f8408eb2ee7907(param1,this._e0daeb74b75f836aee6a7fb1);
         this._2b080f46e549b4b5a001764c(_loc2_);
         return _loc2_.handler;
      }
      
      private function _e0daeb74b75f836aee6a7fb1(param1:_1df7546ca5f8408eb2ee7907) : void
      {
         this._73bc65955b0f014b23436384(param1);
      }
      
      public function _488967ac047893d375c28607() : void
      {
         this._73bc65955b0f014b23436384(this._c929f304422807e378d411a8);
      }
      
      public function _6315f137d1c92b0c8ae68514() : void
      {
         var _loc1_:_f11f4587bdf083a8dd45aa84 = null;
         for each(_loc1_ in this._70f3efe0a5421662b0d6774a)
         {
            this._73bc65955b0f014b23436384(_loc1_);
         }
      }
   }
}

