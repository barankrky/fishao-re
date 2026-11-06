package com.ax3.fishao.view.tooltips
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.tfs._54f9b8840449ba06a43df78c;
   import com.ax3.display.ui._c47d98934dc43f007120e494;
   import com.ax3.fishao.control.managers._0dea9d20559cb8ec5bb639be;
   import com.ax3.fishao.control.managers._24372ec25826d4547f4fa51e;
   import com.ax3.fishao.model.events._69424463d30df62a2ef50dc1;
   import com.ax3.fishao.model.interfaces._0a5c00b209e7e219b78f41d6;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class _9136d3d44d2552f930ba4709 extends Sprite implements _0a5c00b209e7e219b78f41d6
   {
      
      private static const _2b57c35eed93ab99018e1abd:int = 0x5FB68A74 ^ 0x66EE49E7 ^ -320374409 ^ -708855058;
      
      private var _550323dbdc14a45e476c58c7:Sprite;
      
      private var _facdf1187007af55dde75071:TextField;
      
      private var _4b0a91eefbf8973e067e9705:Number;
      
      private var _a4c5eda2fe3d76f475ce50de:Number;
      
      private const _68f7b13706277fb13f39bf92:int = 200;
      
      private const _6d447c48eaa9fac8d2019d36:int = 5;
      
      protected var _hideTimer:uint;
      
      private const _1eeb6e84c6d4ca11a1ddb802:int = 4;
      
      private const _ba00a511bef64a6c68f3412b:int = 3;
      
      public function _9136d3d44d2552f930ba4709()
      {
         super();
         this._550323dbdc14a45e476c58c7 = new Sprite();
         addChild(this._550323dbdc14a45e476c58c7);
         this._cf04255f4b4b3c76c80e7040();
         mouseChildren = false;
         mouseEnabled = false;
      }
      
      private function _cf04255f4b4b3c76c80e7040() : void
      {
         var _loc1_:_54f9b8840449ba06a43df78c = new _54f9b8840449ba06a43df78c({
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓刚劼势劸刊刋勏勴刯刣刖刭動剢勾","劻則剒刂別勢勱別力則劋勠剎剻勺勝")):_0dea9d20559cb8ec5bb639be.DEFAULT_FONT_BOLD,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺勝勵劅剁勖刹剏剡勄勋劮利勔剄刯劬募","制刉剘制削剋剜劯別動劚勝剡刘劰刹")):-1012926180 ^ -1569295927 ^ 0x392A7E0B ^ 0x583C0921,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵捭掝授揩挼揽揎掏掄掛掕捵掚揭掠","挄捸插揕掽持掝揢措揗掁挎掹掷捳掮")):0x25832527 ^ 0x037B0563 ^ 0x1B6FB28D ^ 0x3D9792C5,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဳႠ။ჾတჿၢၱုနၯယၮၰဟၗဃာ","Ⴖေဋ჏ဏშႌ၈၌ე჈လဿႜာႅ")):TextFormatAlign.LEFT,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劓劷勐刎剪功初剫别勶刼劐剙剾到劬","劺剆勲劶刐劀剂則剭勍剽刄勮前剑剩")):true
         },{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掀掩指捘挪揂掬挝掐掟挧握揑掃捡揳捤捠","掸揀据挤掳掿捻揑揹揨捻揰损掝揾揤")):this._68f7b13706277fb13f39bf92,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჟာၠၓွၱ၅။Ⴤႛ၌ႅ჉აစၡჲႂၼၓဂႂၭႥ","ၳყჵ႖ဲဥႈ႖ჺယჳ႗ჳၐၜႜ")):true,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揿掘挾掯掉捊掛捬挙指捜掙挽掛揪捲挔掟捙掘掰挶掂捃掖揣","挛掊揖捧揢揚探揽挼捡挙掀挣掶捫掺")):true,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆ်Ⴃ၈ၑၶႉჰჩႏႆჾႏၩဆႬ႙႐ဟ။ြზၒကსၿჂဎ","ၫၕმეၐၝႊიჺქၫფႊၯეႱ")):false,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛုჰႃၽႠႭဧဥტყႢჾ႕ၭႊႎჭეႨ","ဋရႂႊၰႠჩမႚဲჶ჏Ⴀၩ၈မ")):false,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜掴挍揁控据換揣捌揰捩捂揢挄挽掗揁捥挲捾持捗捄捙挴掺捕揵掴捎","挊挃捙挽揂揜挋揬捅掐握挻揇捣掵捣")):-820680514 ^ 0x605666EF ^ 0x2A66AC3A ^ -2049269141,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳剭刧勚劓刐勘劀刮勓勧刉剗功勥刓到别募劳刡創刀劷刱刣勸劖","勎刻剈刌刉副動勼剧勡刎副劧剘剑刑")):true
         });
         this._facdf1187007af55dde75071 = _c47d98934dc43f007120e494._69e3ba2b7ebdbb58d0b26c75("",[_loc1_]);
         this._facdf1187007af55dde75071.x = this._6d447c48eaa9fac8d2019d36;
         this._facdf1187007af55dde75071.y = this._6d447c48eaa9fac8d2019d36;
         addChild(this._facdf1187007af55dde75071);
      }
      
      public function config(param1:Object) : void
      {
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掉挹挭掠按掔捅掓揹揊挏掲揮捨揽挥","捲掤换掿揝按掗揉掠掝掔挑挂挊掏挝")) && param1.text != null && param1.text != "")
         {
            this._facdf1187007af55dde75071.autoSize = TextFieldAutoSize.NONE;
            this._facdf1187007af55dde75071.width = this._68f7b13706277fb13f39bf92;
            this._facdf1187007af55dde75071.text = param1.text;
            this._facdf1187007af55dde75071.autoSize = TextFieldAutoSize.RIGHT;
            this._facdf1187007af55dde75071.visible = true;
         }
         else
         {
            this._facdf1187007af55dde75071.visible = false;
         }
         this._35140b48f7549c238cb4c049();
      }
      
      private function _35140b48f7549c238cb4c049() : void
      {
         this._550323dbdc14a45e476c58c7.graphics.clear();
         this._550323dbdc14a45e476c58c7.graphics.beginFill(0x5680FE48 ^ 0x3010FEAF ^ 0x66D78F64 ^ 0x478F83,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("描挴捿揺挾掃插捀捃揕掁掫捆揖揭探挛掇掤捵捿挀揦揓","掆捜挪挎挢捜掳揺揉挼捝揜揂揬揱挳"));
         this._4b0a91eefbf8973e067e9705 = this._facdf1187007af55dde75071.textWidth + this._6d447c48eaa9fac8d2019d36 * (-1038972387 ^ -628400086 ^ -1668009210 ^ -2079467213) + this._1eeb6e84c6d4ca11a1ddb802;
         this._a4c5eda2fe3d76f475ce50de = this._facdf1187007af55dde75071.textHeight + this._6d447c48eaa9fac8d2019d36 * (0x3C47D00E ^ -325242044 ^ -1954099962 ^ 0x5B5C2E4E) + this._ba00a511bef64a6c68f3412b;
         var _temp_2:* = this._550323dbdc14a45e476c58c7.graphics;
         var _temp_1:* = 0x0946A1D5 ^ -337333338 ^ -1389779704 ^ 0x4F8BB77B;
         _temp_2.drawRoundRect(_temp_1,_temp_1,this._4b0a91eefbf8973e067e9705,this._a4c5eda2fe3d76f475ce50de,_2b57c35eed93ab99018e1abd,_2b57c35eed93ab99018e1abd);
         this._550323dbdc14a45e476c58c7.graphics.endFill();
      }
      
      override public function get width() : Number
      {
         return this._4b0a91eefbf8973e067e9705;
      }
      
      override public function get height() : Number
      {
         return this._a4c5eda2fe3d76f475ce50de;
      }
      
      public function activate() : void
      {
         clearTimeout(this._hideTimer);
         this._hideTimer = -2018680572 ^ 0x5374CBBF ^ 0x26F29A ^ -721463263;
         GameSwf.globalDispatcher.addEventListener(_69424463d30df62a2ef50dc1.DESTROY_POPUP,this._0089e0572e76fa8081f27b9d);
      }
      
      private function _0089e0572e76fa8081f27b9d(param1:_69424463d30df62a2ef50dc1 = null) : void
      {
         var _loc2_:int = -47984284 ^ -2040877341 ^ 0x524967A6 ^ -1558935774;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1812026671 ^ 0x5AF4B8BC ^ -1980536298 ^ -891426950))
            {
               case 0:
                  this._hideTimer = setTimeout(this.deactivate,0x1EB857AA ^ 0x47B61057 ^ 0x298054CA ^ 0x708E1337);
                  _loc2_ = -70195632 ^ 0x62A8B882 ^ -250619749 ^ -497870519;
                  break;
               case 1:
                  return;
               case 2:
                  GameSwf.globalDispatcher.removeEventListener(_69424463d30df62a2ef50dc1.DESTROY_POPUP,this.deactivate);
                  if(this._hideTimer == (-264569299 ^ 0x5092BBC2 ^ 0x1C369C53 ^ -1130440260))
                  {
                     _loc2_ = -888240254 ^ 0x03EF6975 ^ 0x2DBCEDD6 ^ 0x6F799C20;
                  }
                  else
                  {
                     _loc2_ = -1645907128 ^ 0x470F9B1F ^ -2145492961 ^ -791668920;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function deactivate() : void
      {
         _24372ec25826d4547f4fa51e._078f41136ab0efcf4cfd2e3c(this);
      }
      
      public function isActive() : Boolean
      {
         return parent != null;
      }
      
      public function update() : void
      {
      }
   }
}

