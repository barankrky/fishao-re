package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _ccc79943b3dd572e1de68e20 extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _a5ae0f1273176468f9a8183f:TextField;
      
      private var _4f0c9a216402c878ae28b134:MovieClip;
      
      private var _c109c5e1c058f8861d435f95:MovieClip;
      
      private var _8bd702d7f8f8b3baac05709e:MovieClip;
      
      private var _6846aa1b65f5109ffedd8c3b:int;
      
      private var _21441a3b146408bcf3fdf00c:MovieClip;
      
      public function _ccc79943b3dd572e1de68e20()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._6846aa1b65f5109ffedd8c3b = x + param1.width / (-2138711134 ^ -967149077 ^ -1296229919 ^ -194856022);
         this._a5ae0f1273176468f9a8183f = TextField(MovieClip(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ေႋႢုၹႀၕူႂშၦ႓႟რဒ႗ჿჺ","ჟၨႋဟႺူႏႝ၄ယံႅဨႚცၕ")));
         this._c109c5e1c058f8861d435f95 = MovieClip(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刋刧副劔删劦勘剉劖勖剋剋","勗劖勃劺劃剒刡剮刃剱勏効刧劲勯剐")));
         this._8bd702d7f8f8b3baac05709e = MovieClip(MovieClip(_child).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勥勍剰刏刎刓剂劺勊励勽刵勥到前劍刺剤","剱刖勎前勗劝刪劳刢剂剴加前劄刼剫")));
         this._4f0c9a216402c878ae28b134 = MovieClip(MovieClip(_child).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振挞掂捩揪捕挧挪揎掺揪捛揀捺挙揃","挕挩掳揱掝挧揼揪指挳挮捶措掣捋掼")));
         this._21441a3b146408bcf3fdf00c = MovieClip(MovieClip(_child).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掜援揱掅揯挮揝掶捛揲捪揙掂捋捵捥揼挕掣插掱挶","挤据挓揢捞揽提揥插捡捘挧捪捗捦掹")));
         addChild(param1);
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:int = -1250236460 ^ 0x38E1A5DC ^ -910591570 ^ 0x3944E718;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1167919445 ^ -781903652 ^ -346667618 ^ -46696618))
            {
               case 0:
                  this._21441a3b146408bcf3fdf00c.width = this._4f0c9a216402c878ae28b134.width + this._c109c5e1c058f8861d435f95.width + this._8bd702d7f8f8b3baac05709e.width - (0x2DEA4540 ^ -232887215 ^ 0x5CC3FCB9 ^ -2093492804);
                  _loc2_ = 0x3B283EAA ^ 0xE8A0A9 ^ -1344179176 ^ -381208922;
                  break;
               case 1:
                  this._c109c5e1c058f8861d435f95.width = param1 - this._4f0c9a216402c878ae28b134.width - this._8bd702d7f8f8b3baac05709e.width;
                  this._c109c5e1c058f8861d435f95.x = int(this._4f0c9a216402c878ae28b134.width);
                  if(this._21441a3b146408bcf3fdf00c != null)
                  {
                     _loc2_ = 0x796370BA ^ -1656209654 ^ -718443721 ^ 0x4C60F838;
                  }
                  else
                  {
                     _loc2_ = 0x6ECD34E4 ^ 0x544D554E ^ -485690212 ^ -1528149621;
                  }
                  break;
               case 2:
                  this._a5ae0f1273176468f9a8183f.x = int((this._4f0c9a216402c878ae28b134.width + this._c109c5e1c058f8861d435f95.width + this._8bd702d7f8f8b3baac05709e.width - this._a5ae0f1273176468f9a8183f.width) / (-1943427933 ^ -1212158114 ^ -864787316 ^ -136171661) - (0x0F665EF4 ^ -1990089482 ^ 0x1963BB77 ^ -1620819594));
                  this._8bd702d7f8f8b3baac05709e.x = int(this._c109c5e1c058f8861d435f95.x + this._c109c5e1c058f8861d435f95.width);
                  x = int(this._6846aa1b65f5109ffedd8c3b - width / (-1296596211 ^ -457654332 ^ -789497528 ^ -2030172797));
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set text(param1:String) : void
      {
         this._a5ae0f1273176468f9a8183f.text = param1;
         if(this._a5ae0f1273176468f9a8183f.width < this._a5ae0f1273176468f9a8183f.textWidth + (-1832613394 ^ 0x469AECAC ^ -321049862 ^ 0x38834FBD))
         {
            this._a5ae0f1273176468f9a8183f.width = this._a5ae0f1273176468f9a8183f.textWidth + (-66704016 ^ -2029893103 ^ -324495223 ^ -1750269971);
            if(this._c109c5e1c058f8861d435f95.width < this._a5ae0f1273176468f9a8183f.width)
            {
               this._c109c5e1c058f8861d435f95.width = this._a5ae0f1273176468f9a8183f.width - this._4f0c9a216402c878ae28b134.width;
               this._c109c5e1c058f8861d435f95.x = int(this._4f0c9a216402c878ae28b134.width);
               if(this._21441a3b146408bcf3fdf00c != null && this._21441a3b146408bcf3fdf00c.width < this._a5ae0f1273176468f9a8183f.width)
               {
                  this._21441a3b146408bcf3fdf00c.width = this._4f0c9a216402c878ae28b134.width + this._c109c5e1c058f8861d435f95.width + this._8bd702d7f8f8b3baac05709e.width - (-583815357 ^ 0x15F46985 ^ 0x442C14BA ^ -1930702232);
                  this._21441a3b146408bcf3fdf00c.x = int((this._4f0c9a216402c878ae28b134.width + this._c109c5e1c058f8861d435f95.width + this._8bd702d7f8f8b3baac05709e.width - this._a5ae0f1273176468f9a8183f.width) / (0x71834DF0 ^ -2091275064 ^ -3028766 ^ 0x0D0B29D8) - (0x0D2835C6 ^ -1283345751 ^ 0x1FFC595C ^ -1588208080));
               }
               this._8bd702d7f8f8b3baac05709e.x = int(this._c109c5e1c058f8861d435f95.width + this._4f0c9a216402c878ae28b134.width);
               x = int(this._6846aa1b65f5109ffedd8c3b - width / (0x70253D23 ^ -1370671204 ^ -78960594 ^ 0x25232293));
            }
         }
      }
   }
}

