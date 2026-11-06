package com.ax3.fishao.view.dialogs.club.pages.tournament.item
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.model._f3277cf8667e55e52c907b59;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import flash.display.MovieClip;
   
   public class _157e90da35b38626eab33194 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _b5b52f167423813f06b7d8b4:gViewClubsItemTournament = new gViewClubsItemTournament();
      
      private var _30f9122f213e90871c256312:_1c73633a6a4f4f6050258c2a;
      
      private var _cbcbcda3a4008d0e3edeee54:_73899a4de8f83c8d2c26f545;
      
      private var _b3f72f5fcf2cd6e0b95ab126:_73899a4de8f83c8d2c26f545;
      
      private var _cf0205227f1ae62a325cf342:_73899a4de8f83c8d2c26f545;
      
      private var _ba6310cbf3a480f758906495:_73899a4de8f83c8d2c26f545;
      
      private var _166ca035b49b1f3c04f7528e:MovieClip;
      
      public function _157e90da35b38626eab33194(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._b5b52f167423813f06b7d8b4);
         this.init();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._30f9122f213e90871c256312.emblemID = param1;
      }
      
      public function set position(param1:int) : void
      {
         this._cbcbcda3a4008d0e3edeee54.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._b3f72f5fcf2cd6e0b95ab126.text = param1;
      }
      
      public function _965feec4b02fdf3797d5afbf(param1:String, param2:int) : void
      {
         this._cf0205227f1ae62a325cf342.text = _f3277cf8667e55e52c907b59._03a5d24313eb53e37432ec70(param1,param2);
      }
      
      public function set tournamentType(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_f3277cf8667e55e52c907b59.ETCT_COMPLETE_MISSIONS === _loc2_ ? 0x7B4DBCEF ^ -1171264808 ^ -1583505494 ^ 0x60FFC99D : 0x19156830 ^ 0x5E88DBF7 ^ 0x3D04EE38 ^ 0x7A995DFE)
         {
            case 0:
               this._166ca035b49b1f3c04f7528e.gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳勥劷募勞勧劮刡劶劜勔勩划劒劄剟刽剩劇力劍剀勗勖","則勴剫刜募務剈剱判勲劄刀剌刻势勨"));
               break;
            default:
               this._166ca035b49b1f3c04f7528e.gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၾံၻဦ႓၉ၥႦၙၡႍჾპ၊ლအ","ၱეဗ၅ჹ჈ი၍ႜჹႛჰစဦႈჳ"));
         }
      }
      
      public function set reward(param1:int) : void
      {
         this._ba6310cbf3a480f758906495.text = param1.toString();
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         var _loc2_:int = -1075175419 ^ 0x2E8544DA ^ 0x104B571C ^ -833150683;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1940235414 ^ -222049828 ^ 0x67277A34 ^ 0x56CDFA64))
            {
               case 0:
                  this._b5b52f167423813f06b7d8b4.viewCurrent.visible = param1;
                  if(param1)
                  {
                     _loc2_ = 0x77B871A0 ^ 0x0DE9D006 ^ -1415123322 ^ -1635492409;
                  }
                  else
                  {
                     _loc2_ = 0x0940B2CB ^ 0x75395C27 ^ -1431925726 ^ -1716752342;
                  }
                  break;
               case 1:
                  this._cbcbcda3a4008d0e3edeee54.source.textColor = -1326641909 ^ -1023136443 ^ 0x2D99B4FB ^ 0x5E8F6B4A;
                  this._cbcbcda3a4008d0e3edeee54.source.filters = [];
                  this._b3f72f5fcf2cd6e0b95ab126.source.textColor = -1273856066 ^ 0x1161A914 ^ 0x23564D9F ^ -2032507702;
                  this._cf0205227f1ae62a325cf342.source.textColor = 0x1C61FCE5 ^ 0x7BA24F09 ^ -527968015 ^ -2017749790;
                  this._ba6310cbf3a480f758906495.source.textColor = -1746792890 ^ 0x6C29462F ^ 0x66B811F2 ^ -1651726748;
                  _loc2_ = -118027265 ^ -658620889 ^ -1895350241 ^ -532846813;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._fc17178734ae7cc816dbcc2f(true);
         this._b5b52f167423813f06b7d8b4.mouseChildren = false;
         this._30f9122f213e90871c256312 = new _1c73633a6a4f4f6050258c2a(this.controller,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴၫიႨဈႳბ႐ჸႏ၎ညႏႣၡရဋჹးူၟჂႄწ჈ႎჵჭ","Ⴓၞစკဟလ့ႆჇဘႺဇჼ჉ဿႭ")));
         this._cbcbcda3a4008d0e3edeee54 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐刢勣剹刜剛劄劉勤剒別勯剧剂刷刷刣勌剁剶勗刞刔劼刺勶勻劙势刲剐剨剈劷","劜助剂剏劆劯勎劇助勐劁刍刲勭劽劀"),null);
         this._b3f72f5fcf2cd6e0b95ab126 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၙႪႌჁႾၾႣၶჰჶႌჽ၎၅ბႷხ႐ၙၝၠႡ჻აჼၪ","ჩဆႣဴၪၩၕႨဪဎဈ჈ცქ჆ဨ"),null);
         this._cf0205227f1ae62a325cf342 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刂剴刯剻勥刱刳刵刅勦办剕劰刼勎剷劃労労劌勇剄勎剧劘剢劤刐分勐创剥刕劥","剘劫勜劊剄勌劋剠剫刿刉制刿劢劊劁"),null);
         this._ba6310cbf3a480f758906495 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔剢劍剔剟劳制勗劻剭刃劅前勝剖副刢勤勿刊勹勸刍剸刘刎刋劕剞劰","勍剁勋剷利勐刦剨刜刘劙劤勭剘劤刑"),null);
         this._166ca035b49b1f3c04f7528e = Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႕ဒခဒჃჹკၸჂჃၘႅႳღႾၵၽၒူჸჇ၎Ⴋဘ","კၼဠႥဪႢလဤთმဓဇႬပ჏ყ"));
      }
   }
}

