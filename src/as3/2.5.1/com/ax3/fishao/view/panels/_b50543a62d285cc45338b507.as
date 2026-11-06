package com.ax3.fishao.view.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import com.ax3.utils.timer._33dd41a12065671be9311587;
   import com.inkora.tween.TweenCube;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class _b50543a62d285cc45338b507 extends ChatPopupAsset
   {
      
      private static const _cb94ff43501106cf6c62ad2c:int = -1784976226 ^ 0x7AE23C0A ^ -991528300 ^ 0x2B9F2A06;
      
      private static const _1793fe92664487c6a26ba34d:int = -122842363 ^ -405373989 ^ -1026465153 ^ -576025945;
      
      private static const _6d5773cebccaf0666b9a93d6:int = 0x05E71037 ^ -725387798 ^ -878529877 ^ 0x1A86D775;
      
      private const _4653a8d49a3833817a4efd4a:Number = 5;
      
      private const _0bb4ed1cd64d2d6d4b555384:int = 177;
      
      private const _87e7c0ab206927b05afdb7c1:int = 149;
      
      private const _f9e3b94ab806af659201e627:int = 14;
      
      private const _77ece35e18eede657a4d9d78:int = 150;
      
      private const _9fa4a4533927534d16e8f9db:int = 2000;
      
      private var _d4ddaacb391697af00dbdac0:Vector.<String> = new Vector.<String>();
      
      private var _5f443f42c0e428cbeb6f9556:_33dd41a12065671be9311587;
      
      public var volume:Number = 0;
      
      private var _b74732d1e4cb8c789b2a8715:String = null;
      
      public function _b50543a62d285cc45338b507()
      {
         super();
         txt.mouseWheelEnabled = false;
         buttonMode = true;
         this._3fda1086bf49c94d24ff889b();
      }
      
      protected function hide() : void
      {
         var _loc1_:int = 0x56465748 ^ -1892163155 ^ -583864710 ^ -819067135;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-376965435 ^ 0x2A301289 ^ -758870036 ^ -635554753))
            {
               case 0:
                  TweenCube.destroyTweensOf(this);
                  TweenCube.to(this,-233810322 ^ -368991274 ^ 0x09F83BFC ^ 0x11E9CE45,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶捇揓捥掋挿挵挕掮揜挡揨捹揆揻捬揷揕","掘描捝挞掞揕掯捐掤掟揅掊揙挥捉提")):-1742623633 ^ -1347479331 ^ -673023069 ^ -529740015},{
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სფ჋၅ၫႈვაႄႬၪ჎ႌဤႰ჆ႅၙჼ჉Ⴁဝჴခင჈ဍႤ","႖ၑႢဖ၂ဦဘცჃး႑ႏၗႻႀဃ")):this._3fda1086bf49c94d24ff889b,
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚勜劤劅剭刘勝劏刃劇剆刻剒创勷勂劫劢","劽劶刊刊剞勦剮勡劭勵勅勐则劺刭勗")):_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("創剸勫劶刵刲剉剠勥劺勉剩劉勑判剁劌勗勓劣刔剧剭刵","勱刖勋剖劺剞刍剽动制剎剿劲勻剑勏")
                  });
                  _loc1_ = 0x1B118D1E ^ -824855714 ^ -1703237751 ^ -2066495916;
                  break;
               case 1:
                  if(this.alpha > (-774441395 ^ 0x43794970 ^ -1906254498 ^ 0x1CCF6263))
                  {
                     _loc1_ = 0x41C00EE5 ^ 0x72AE5977 ^ 0x27AE7E55 ^ -542280104;
                  }
                  else
                  {
                     _loc1_ = 0x7612AB0D ^ 0x7F9E0FCD ^ -1808746067 ^ 0x56D142F0;
                  }
                  break;
               case 2:
                  app.user.canMove = true;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3fda1086bf49c94d24ff889b() : void
      {
         visible = false;
      }
      
      private function show() : void
      {
         var _loc1_:int = -1012886645 ^ 0x0CDE1DC6 ^ -1501623246 ^ 0x318B97E2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-994212999 ^ -1793169424 ^ 0x4B5CF389 ^ 0x4275029C))
            {
               case 0:
                  return;
               case 1:
                  if(visible == false)
                  {
                     _loc1_ = 0x3FFCF720 ^ -1623651049 ^ 0x014D6D4A ^ -117275933;
                  }
                  else
                  {
                     _loc1_ = -2023190673 ^ -1029426569 ^ 0x1D292EE9 ^ 0x6F866E;
                  }
                  break;
               case 2:
                  visible = true;
                  _loc1_ = 0x1B0AA306 ^ -1085310602 ^ 0x14E76384 ^ -399987605;
                  break;
               case 3:
                  TweenCube.destroyTweensOf(this);
                  if(this.alpha < (-792892892 ^ -1309126604 ^ 0x7A381319 ^ 0x1B7D2908))
                  {
                     _loc1_ = -325640350 ^ 0x2E47DA35 ^ 0x1A237078 ^ -2139512649;
                  }
                  else
                  {
                     _loc1_ = -1378030351 ^ 0x36E7A293 ^ -1571737996 ^ 0x61E0758A;
                  }
                  break;
               case 4:
                  TweenCube.to(this,0x128AA63E ^ -1211448191 ^ -1359392482 ^ 0x0BB933A0,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掵掕掓捒捰揫掻揇掠揧挨授揋揾挟捣掹掽","捺揦掷挮掤捦捑捨挰揰捈揄揄捱挨捕")):0x24195CAB ^ 0x408DD42C ^ 0x672B9B9C ^ 0x03BF131A},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬捛捙掌揚捤措掇握揚描挷掕揎捡掝揵掿","挹揻揽挑揼捍挠捤捞掻据採換挵掶捛")):_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၄ხႏႩდႽ၌გ႖ႆ჉ၟ჆ေဂးიှရျႜჃ။ყ","ဟႆံၮღ჋Ⴍၙ၈၈ၿჴჳ႕ჾဠ")});
                  _loc1_ = -1014681778 ^ 0x3AB2A53C ^ -463897428 ^ 0x45E4E342;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6f9168ea261086cc9ac64e08(param1:TextField, param2:String) : void
      {
         var _loc3_:TextFormat = param1.getTextFormat();
         _loc3_.align = param2;
         param1.setTextFormat(_loc3_);
      }
      
      private function _38dfac072be10e945a320f1b(param1:String) : void
      {
         this._d4ddaacb391697af00dbdac0.push(param1);
         this._faaced07d4c41d9091f89f8a();
      }
      
      private function _faaced07d4c41d9091f89f8a() : void
      {
         var _loc1_:int = 0x49B0B717 ^ -264325342 ^ 0x16C2742E ^ -2100746915;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1584997222 ^ 0x2591AC0C ^ -1688849259 ^ 0x32C41546))
            {
               case 0:
                  this.hide();
                  this._5f443f42c0e428cbeb6f9556.destroy();
                  this._5f443f42c0e428cbeb6f9556 = null;
                  _loc1_ = -1901492446 ^ -783836292 ^ -874776683 ^ -1179600245;
                  break;
               case 1:
                  this._5f443f42c0e428cbeb6f9556._bc1d2c0c359bffe4ef99cfee(this._b74732d1e4cb8c789b2a8715.length * this._77ece35e18eede657a4d9d78 / (0x612C5131 ^ 0x7687E58C ^ -1681021157 ^ -1939468210) + this._9fa4a4533927534d16e8f9db / (-520216579 ^ -2040268186 ^ -587284887 ^ -1167894502),new _0ce7a4d99e17666ff0e19ce6(this._a70f2dc63936edad714e983d));
                  _loc1_ = -272094320 ^ -1608887687 ^ -1098199992 ^ -589437727;
                  break;
               case 2:
                  if(this._5f443f42c0e428cbeb6f9556 != null)
                  {
                     _loc1_ = -552618128 ^ -561311706 ^ -427366104 ^ -897114309;
                  }
                  else
                  {
                     _loc1_ = 0x470610F3 ^ -1238334519 ^ 0x667F262C ^ -1160977322;
                  }
                  break;
               case 3:
                  if(this._b74732d1e4cb8c789b2a8715 == null)
                  {
                     _loc1_ = -1788800016 ^ -1039534825 ^ 0x6FD39452 ^ 0x153E23F6;
                  }
                  else
                  {
                     _loc1_ = 0x556B7A5A ^ -1060433056 ^ 0x48753E5F ^ -263191003;
                  }
                  break;
               case 4:
                  this._5f443f42c0e428cbeb6f9556 = new _33dd41a12065671be9311587();
                  _loc1_ = 0x5676C6CE ^ -1749428094 ^ -541516930 ^ 0x33F35476;
                  break;
               case 5:
                  return;
               case 6:
                  if(this._d4ddaacb391697af00dbdac0.length > (0x68EE24E8 ^ 0x252AD490 ^ -2039550040 ^ -878043184))
                  {
                     _loc1_ = -1390699705 ^ -1638344326 ^ 0x235A526D ^ 0x3D9C4112;
                  }
                  else
                  {
                     _loc1_ = -1761968727 ^ -730609763 ^ 0x2AD6BB99 ^ 0x45DA50EA;
                  }
                  break;
               case 7:
                  this._b74732d1e4cb8c789b2a8715 = this._d4ddaacb391697af00dbdac0.shift();
                  this._dc18a18fe84c6db09f6a67e8(this._b74732d1e4cb8c789b2a8715);
                  this.show();
                  if(this._5f443f42c0e428cbeb6f9556 == null)
                  {
                     _loc1_ = -548096154 ^ 0x48E555D0 ^ -1418582882 ^ 0x11469769;
                  }
                  else
                  {
                     _loc1_ = 0x06E0A68C ^ 0x3B708A38 ^ 0x19148AE1 ^ 0x0901F711;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _a70f2dc63936edad714e983d() : void
      {
         this._b74732d1e4cb8c789b2a8715 = null;
         this._faaced07d4c41d9091f89f8a();
      }
      
      private function _dc18a18fe84c6db09f6a67e8(param1:String) : void
      {
         var _loc2_:int = -315598546 ^ 0x09AC73BC ^ -1990056937 ^ -1512231430;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x65286A52 ^ -1692404570 ^ -1102916848 ^ -2007601509))
            {
               case 0:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_043_UI_Chat_message,this.volume);
                  txt.text = param1;
                  if(param1 == "")
                  {
                     _loc2_ = -452630328 ^ -700508272 ^ -37893285 ^ 0x06A4977A;
                  }
                  else
                  {
                     _loc2_ = 0x15231E7C ^ 0x417B74E2 ^ 0x6059F41C ^ -64832008;
                  }
                  break;
               case 1:
                  if(this._f9e3b94ab806af659201e627 * txt.numLines < this._87e7c0ab206927b05afdb7c1)
                  {
                     _loc2_ = 0x706992AF ^ -1812619582 ^ 0x2F6F7815 ^ 0x04D05704;
                  }
                  else
                  {
                     _loc2_ = 0x1DC32F6A ^ -1218603616 ^ 0x65CB54F2 ^ 0x0776CD43;
                  }
                  break;
               case 2:
                  txt.width = int(txt.textWidth + _cb94ff43501106cf6c62ad2c);
                  _loc2_ = 0x2B738300 ^ -374131958 ^ 0x370819AC ^ 0x3DEB8AD8;
                  break;
               case 3:
                  txt.height = int(this._f9e3b94ab806af659201e627 * txt.numLines + _6d5773cebccaf0666b9a93d6);
                  _loc2_ = -197301303 ^ -1084858358 ^ -1378283099 ^ 0x2E91391D;
                  break;
               case 4:
                  this._f75ced0500bc7dfa01136e43(txt.width,txt.height);
                  return;
               case 5:
                  txt.width = this._0bb4ed1cd64d2d6d4b555384;
                  txt.height = this._87e7c0ab206927b05afdb7c1;
                  txt.x = _1793fe92664487c6a26ba34d;
                  txt.y = _1793fe92664487c6a26ba34d;
                  if(txt.textWidth + _cb94ff43501106cf6c62ad2c < this._0bb4ed1cd64d2d6d4b555384)
                  {
                     _loc2_ = 0x4EF8297C ^ 0x2E87C397 ^ 0x52472E10 ^ -98834554;
                  }
                  else
                  {
                     _loc2_ = -77323879 ^ 0x359A9480 ^ 0x5943E453 ^ 0x5F9E7234;
                  }
                  break;
               case 6:
                  this.hide();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set text(param1:String) : void
      {
         this._a70f2dc63936edad714e983d();
         this._38dfac072be10e945a320f1b(param1);
      }
      
      protected function _f75ced0500bc7dfa01136e43(param1:int, param2:int) : void
      {
         var _loc3_:int = 0x5A5313 ^ -1132919716 ^ 0x55450162 ^ -16505837;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1182931718 ^ -877679628 ^ 0x492AAFD9 ^ 0x2D9A92E8))
            {
               case 0:
                  background.centerUp.width = background.arrow.width;
                  txt.width = int(background.centerUp.width + background.leftUp.width * (-1412650608 ^ -2138822590 ^ -1063010339 ^ -336904691) - _1793fe92664487c6a26ba34d * (0x34E6C59F ^ 0x5664057A ^ 0x024EE0EC ^ 0x60CC200B));
                  this._6f9168ea261086cc9ac64e08(txt,TextFormatAlign.CENTER);
                  _loc3_ = 0x3E98A932 ^ -1995242758 ^ 0x794E5F89 ^ -660109700;
                  break;
               case 1:
                  background.leftUp.x = 0x18AC2D88 ^ -704923264 ^ -1453213402 ^ 0x64362D2E;
                  background.leftUp.y = 0x3B7729ED ^ 0x79489E52 ^ -744640512 ^ -1851652161;
                  background.centerUp.x = background.leftUp.width;
                  background.centerUp.y = background.leftUp.y;
                  background.centerUp.width = int(param1 + _1793fe92664487c6a26ba34d * (0x7E02F8FC ^ 0x75869E0E ^ -46706728 ^ -156030680) - background.leftUp.width * (-1373410250 ^ 0x1B78FB90 ^ -1891583670 ^ 0x3A1B2EEE));
                  if(background.centerUp.width < background.arrow.width)
                  {
                     _loc3_ = 0x41653DC6 ^ 0x14F564D2 ^ 0x0CCB2796 ^ 0x4F390CBD;
                  }
                  else
                  {
                     _loc3_ = 0x2D2A5414 ^ 0x4F3CD797 ^ -2068235917 ^ -254949172;
                  }
                  break;
               case 2:
                  background.rightUp.x = background.centerUp.width + background.centerUp.x;
                  background.rightUp.y = background.centerUp.y;
                  background.left.x = 0x676FF37C ^ -993292396 ^ 0x286D0705 ^ -1949729811;
                  background.left.y = background.leftUp.height;
                  background.left.height = int(param2 + _1793fe92664487c6a26ba34d * (-1269999678 ^ 0x6AB82570 ^ -917232952 ^ 0x17A15078) - background.leftUp.height * (0x444C63F4 ^ -450143632 ^ -1752548390 ^ 0x36ED025C));
                  background.center.x = background.centerUp.x;
                  background.center.y = background.left.y;
                  background.center.width = background.centerUp.width;
                  background.center.height = background.left.height;
                  background.right.x = background.center.width + background.centerUp.x;
                  background.right.y = background.center.y;
                  background.right.height = background.left.height;
                  background.leftDown.x = 0x224A9BCD ^ 0x321610BD ^ -607154631 ^ -879557303;
                  background.leftDown.y = background.left.height + background.leftUp.height;
                  background.centerDownLeft.x = background.center.x;
                  background.centerDownLeft.y = background.leftDown.y;
                  background.centerDownLeft.width = int((background.centerUp.width - background.arrow.width) * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႤჇცჟဧႬ჎ၲზ჉ၷီႺ႓პ၆၆ႁზႸျဳဠၬ","ႼႶၨႬთ႟႓რხ႐ဇဃၫႅၥჀ"));
                  background.arrow.x = background.centerDownLeft.x + background.centerDownLeft.width;
                  background.arrow.y = background.centerDownLeft.y;
                  background.centerDownRight.x = background.arrow.x + background.arrow.width;
                  background.centerDownRight.y = background.arrow.y;
                  background.centerDownRight.width = background.centerUp.width - background.centerDownLeft.width - background.arrow.width;
                  background.rightDown.x = background.right.x;
                  background.rightDown.y = background.arrow.y;
                  return;
               case 3:
                  this._6f9168ea261086cc9ac64e08(txt,TextFormatAlign.LEFT);
                  _loc3_ = -426474097 ^ 0x14CCA6B2 ^ 0x4F9E00D6 ^ -1415294506;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = param1 - width * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴖဌჸၽ჋ၑဘှဴႛႽთ႐ကၒၻლျ၍ჹვ႔ႋ၀","჻ၓ႟႑Ⴚႏသჳၯၩჯუဎშၹၺ");
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = param1 - height - (-1244689176 ^ -15822644 ^ -1321756124 ^ -67729865);
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -1819172753 ^ 0x6F8923CB ^ -1949244867 ^ -1675862664;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x320F0A52 ^ 0x72C0B3F2 ^ -1756248677 ^ 0x3C4A40DB))
            {
               case 0:
                  return;
               case 1:
                  TweenCube.destroyTweensOf(this);
                  this._d4ddaacb391697af00dbdac0.length = 0x5BE46657 ^ -108593763 ^ -1250523838 ^ 0x17141E88;
                  this._d4ddaacb391697af00dbdac0 = null;
                  if(this._5f443f42c0e428cbeb6f9556 != null)
                  {
                     _loc1_ = -2049172765 ^ -163599627 ^ 0x21AD890F ^ -1181088261;
                  }
                  else
                  {
                     _loc1_ = -685639346 ^ -837973032 ^ 0x77DC86CF ^ -2061186887;
                  }
                  break;
               case 2:
                  this._5f443f42c0e428cbeb6f9556.destroy();
                  this._5f443f42c0e428cbeb6f9556 = null;
                  _loc1_ = 0x6EC3F264 ^ -1879583304 ^ -1468798646 ^ -1567362442;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

