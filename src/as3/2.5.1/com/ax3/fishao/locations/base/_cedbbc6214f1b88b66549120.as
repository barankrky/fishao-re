package com.ax3.fishao.locations.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._21239baf873157a683f8b6d6;
   import com.ax3.jss.ext.impl._423a40efcf05a17bb8cf4bf3;
   import com.junkbyte.console.Cc;
   import protocol.sr.UpdateResp;
   
   public class _cedbbc6214f1b88b66549120 extends _4039c287ddb4ef46ab65ab0e
   {
      
      protected var prevUrl:String;
      
      protected var prevWorldName:String;
      
      private var _941b2dc8f0f1954ecc5d2cdd:Boolean;
      
      public function _cedbbc6214f1b88b66549120(param1:int)
      {
         super(param1);
      }
      
      public function set exitThroughTheDoor(param1:Boolean) : void
      {
         this._941b2dc8f0f1954ecc5d2cdd = param1;
      }
      
      protected function _1cf0cdd2a2d449dc47167bcb() : void
      {
         var _loc1_:_423a40efcf05a17bb8cf4bf3 = _dfa25706e58a240c1e33e5c6.loginFscExtension;
         var _loc2_:String = _loc1_.worldName.toLowerCase();
         if(_loc2_.indexOf(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႚဪဏှეွႵၣဵႩဇ၀ရၝჇ့ქဨჂၪტဩ","ဘქှၴႉႮ႙჆၌ၖႿဴပဥၝძ")) == (-1351141386 ^ 0x38D8E3E9 ^ -533847499 ^ -2005005867) && _loc2_.indexOf(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刽劔剜到勊別効勗劳劄刡劜劄刊勫劯","剂剎剓剂剩勳势刡劧剉勘剑刱勗刋剦")) == (-869798515 ^ -1298838154 ^ -1006224790 ^ 0x454B656E))
         {
            this.prevUrl = _loc1_.url;
            this.prevWorldName = _loc1_.worldName;
         }
      }
      
      override public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var world:Object = null;
         try
         {
            super._74c869ae3d29b2df7f677f8a(response);
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ယ၆ဥံ႒၇ဦ၄ცၴဆ္ზဢၼႃქယငძၫ်ႏႝ჌ၡဿႦဎဤ","ჷၭဂႱၞၩႂႝუၥမႜႷၰჸၗ")))
            {
               world = response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("控挜捆掘掉揂挝捡捋掸揰揇捒揹捶挜揂揜描捩揔揢捸挲捭掤揸挃挤捭","挄掰掕掟掷掯挳掙挚挤捠揋挲掟捸据"));
               this._4a1c8c33c1ff29a5071806f5(world[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲捎挨挝挫挥捺挱掂揺挽掉措挑掹措捚揦掀捸挞捹","捬掝換揃揫捑掜捛挚掀揜捓捑掹掲揦")],world[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揘捏捇挚掅掟揜揠排描损捝捐挅","揙按挧掗捹挢掖捀援授挭捝挠振捗掤")]);
            }
            else if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挨揢揢挕捱掗掚挚挙掞掛揪揀换挲推捎揾捔插掜捵挍挔探捒捎按捈揈挠掟掝掑掬描挗掎插揁揣捎指捍","捳揤振揷掊掉捛掎挠揹掂捌揮揞揟挮")))
            {
               _80557ec7c85c6def233bada4();
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剏刨判勄刧勦刚劜制勂劤剕勩刳劓刎勹則判剓別刄加創勜劈勅剺剪勃力劇刷刡割剙剹剣努勒勪剺勗剫刲勽勉加剠劋勂勚劀刦剈割勤劎劽剎募剬利劙劣劳劀勐劯務刎勷勶剋刞剂剹则動劒勽刘劓劣刌刜剩刴前剱勿勥劑剕劆剔剭勘剤加勦勎","刖劫劇劭劫剶别剓刵刞刬刖努勧勨剡"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揸揻揈捒揳挘揾捷捊挰掐掘掁捑换挔捴揿挺掘捛挺掓捕援揔捦捄","揳挳捯掁挣掍援挰捫掃捅捪挿揙掫掋"));
         }
      }
      
      protected function _4a1c8c33c1ff29a5071806f5(param1:String, param2:String) : void
      {
         var _loc3_:_21239baf873157a683f8b6d6 = app.dialogFactory._21d2708fceafd5c71d0991b1();
         _loc3_._13c08e4b1ab096d46e3a106b(param1,param2,false);
      }
      
      protected function _3c3c06a41025a2381c76e10d() : void
      {
         var _loc1_:_21239baf873157a683f8b6d6 = app.dialogFactory._21d2708fceafd5c71d0991b1();
         _loc1_._672c829d2eecf79dfbd91436(this.prevWorldName,this.prevUrl,false);
      }
      
      protected function _c991359f5471a640eed80260() : void
      {
         var _loc1_:_21239baf873157a683f8b6d6 = app.dialogFactory._21d2708fceafd5c71d0991b1();
         _loc1_._3bb607a8cc1a7a72edfb5b5c(this.prevWorldName,this.prevUrl,false);
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = -1393729354 ^ 0x2A7C567B ^ -1215924277 ^ 0x71EF216C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x25D8BE22 ^ -1683210725 ^ 0x3BAE5ED7 ^ -987578745))
            {
               case 0:
                  GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
                  this._3c3c06a41025a2381c76e10d();
                  _loc1_ = -1204985745 ^ 0x3C3A56B3 ^ 0x27EA12EB ^ -486194084;
                  break;
               case 1:
                  this._c991359f5471a640eed80260();
                  _loc1_ = 0x093B8712 ^ 0x7AF29943 ^ -910758136 ^ -91778766;
                  break;
               case 2:
                  return;
               case 3:
                  super.destroy();
                  if(this._941b2dc8f0f1954ecc5d2cdd)
                  {
                     _loc1_ = 0x5FA9B486 ^ 0x106ACE1B ^ 0x4F6C6F0C ^ 0x405775F9;
                  }
                  else
                  {
                     _loc1_ = 0x579E20 ^ 0x778D73A4 ^ -267288241 ^ -952955742;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

