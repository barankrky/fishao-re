package com.ax3.fishao.view.wrappers.impl.profile.fishesPanel
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.model.profile.fishesPanelData._cad80b76444bb507a2ed0379;
   import com.ax3.fishao.utils._a240f0394e2d5677aff9f7b4;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._aaf40c474cdac784463304b5;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._8e0cf6a61ed6893034f3074e;
   import com.ax3.utils._510d9148470a678356a77991;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _4539bb99a6c845bc8acc0023 extends Sprite implements IAssetWrapper, _8e0cf6a61ed6893034f3074e
   {
      
      private static const _55d5dad1d7d230913000c51f:int = 0x184193C3 ^ 0x7C65AC83 ^ 0x48CDD328 ^ 0x2CE9ECA0;
      
      private static const _e040b9a4e0810a58eb6ae94a:int = -1162310770 ^ -1314278110 ^ -1196601810 ^ -1279495962;
      
      private static const _3481cd538dbf5e7b68d3c4e4:int = 0x6AB46BC2 ^ -93521335 ^ 0x2D66221F ^ -1111575708;
      
      private static const _9ee2633ecd8bcee479589bfd:int = 0x653712B6 ^ 0x62EBBB9D ^ -800593435 ^ -677691213;
      
      private var _a2f339170d5d950e31ed0f74:MovieClip;
      
      private var _e6f29987dfa4e7792163ed52:MovieClip;
      
      private var _name:TextField;
      
      private var _dc525332efec2fec22154e47:_cad80b76444bb507a2ed0379;
      
      public function _4539bb99a6c845bc8acc0023()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x2B576671 ^ 0x14538ACD ^ -34461834 ^ -513066490;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-82459909 ^ 0x51367217 ^ 0x31EFA7A9 ^ -1202592120))
            {
               case 0:
                  addChild(this._a2f339170d5d950e31ed0f74);
                  mouseChildren = true;
                  this._e6f29987dfa4e7792163ed52.buttonMode = true;
                  this._e6f29987dfa4e7792163ed52.useHandCursor = true;
                  this._e6f29987dfa4e7792163ed52.addEventListener(MouseEvent.CLICK,this._afaca649587fe6fb9a598a8d);
                  return;
               case 1:
                  this._a2f339170d5d950e31ed0f74 = MovieClip(param1);
                  this._e6f29987dfa4e7792163ed52 = MovieClip(this._a2f339170d5d950e31ed0f74.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍刲前剂勐則劑勨剥劖剎划剬剜","删劘剹刜剧办効勾劂剾剮刑劂劢勜删")));
                  this._name = TextField(this._a2f339170d5d950e31ed0f74.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳ჋ჀဣჼၠႮჁၼၵჄႆၩ၏ၴႥၤၰႤႉဤာၩဉ","ၠတჸကჷၡႿ჊ိჯႳညნပႾိ")));
                  this._a2f339170d5d950e31ed0f74.stop();
                  if(this._a2f339170d5d950e31ed0f74.parent != null)
                  {
                     _loc2_ = 0x300E0930 ^ -464697982 ^ -814731929 ^ 0x38AE901A;
                  }
                  else
                  {
                     _loc2_ = -2064254266 ^ 0x0ADA0F5E ^ -1883063149 ^ 0x2270B8C6;
                  }
                  break;
               case 2:
                  this._a2f339170d5d950e31ed0f74.parent.addChild(this);
                  _loc2_ = 0x4E5BA6B3 ^ 0x5CB4FE4A ^ 0x0E473654 ^ 0x3F359F60;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _afaca649587fe6fb9a598a8d(param1:MouseEvent) : void
      {
         if(!GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            return;
         }
         var _loc2_:_aaf40c474cdac784463304b5 = app.dialogFactory._6f440513281998ff9a55299c();
         _loc2_._fb2737826eacd0c722842d87(parseInt(this._dc525332efec2fec22154e47.id));
         _loc2_.show();
      }
      
      public function set active(param1:Boolean) : void
      {
         var _loc2_:int = 0x5C06B0F0 ^ 0x71D2E3A9 ^ -1000856174 ^ -2114546274;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x36BEA388 ^ -1584200240 ^ 0x5351162D ^ -1408871647))
            {
               case 0:
                  this._a2f339170d5d950e31ed0f74.gotoAndStop(-1857860677 ^ -100298108 ^ -1834680411 ^ -102619493);
                  _loc2_ = 0x7C6F1EDA ^ 0x1EBA1394 ^ 0x487C7A50 ^ 0x42D39449;
                  break;
               case 1:
                  if(param1)
                  {
                     _loc2_ = 0x2948DA09 ^ -457179957 ^ 0x6266DE14 ^ -940893312;
                  }
                  else
                  {
                     _loc2_ = 0x49116787 ^ -1975226792 ^ 0x44AC44EB ^ -276582816;
                  }
                  break;
               case 2:
                  this._a2f339170d5d950e31ed0f74.gotoAndStop(0x0F0BB8F1 ^ -924951569 ^ -1270305259 ^ 0x739D4D09);
                  _loc2_ = -802254360 ^ 0x5D3F6681 ^ 0x571026C7 ^ -1300548871;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set elementData(param1:Object) : void
      {
         this._dc525332efec2fec22154e47 = _cad80b76444bb507a2ed0379(param1);
         this._c34b299219b7d10fffb0002a = this._dc525332efec2fec22154e47.imageUrl;
         this._name.text = this._dc525332efec2fec22154e47.name;
         this.userHave = this._dc525332efec2fec22154e47.userHave;
      }
      
      private function set _c34b299219b7d10fffb0002a(param1:String) : void
      {
         _510d9148470a678356a77991._dfc01609cda83a1c4e0a9ae9(param1,this._e6f29987dfa4e7792163ed52,app.resourceManager,_55d5dad1d7d230913000c51f,_e040b9a4e0810a58eb6ae94a,_3481cd538dbf5e7b68d3c4e4,_9ee2633ecd8bcee479589bfd);
      }
      
      public function set userHave(param1:Boolean) : void
      {
         var _loc2_:int = -1621395979 ^ 0x1ED25585 ^ -23652842 ^ -519755149;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2976F8 ^ -397359936 ^ 0x4B527049 ^ 0x3D30DE65))
            {
               case 0:
                  this._e6f29987dfa4e7792163ed52.filters = [_a240f0394e2d5677aff9f7b4._4e8eecfe2829137c38b53096(-1849208475 ^ -241655392 ^ -1114659934 ^ 0x222FAC67)];
                  _loc2_ = 0x18F94C35 ^ -366306603 ^ -529420117 ^ -1934001571;
                  break;
               case 1:
                  if(!param1)
                  {
                     _loc2_ = -199675910 ^ 0x41F1801D ^ -1325697081 ^ -1693924300;
                  }
                  else
                  {
                     _loc2_ = 0x79C39D7D ^ 0x34D8BDFA ^ 0x28C5650A ^ -70952549;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

