package com.ax3.fishao.locations.privateHouse.interior.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import flash.geom.Point;
   
   public class _982f2b0d82c7f64c01e267ee extends _89bc7f4f6fa46d997b0e149c
   {
      
      public function _982f2b0d82c7f64c01e267ee()
      {
         super();
      }
      
      public function get width() : int
      {
         var _loc1_:int = 0x10CD0975 ^ -309555280 ^ -1383589770 ^ 0x50C99EB3;
         var _loc2_:int = -462928795 ^ 0x593803CF ^ 0x46AF15A4 ^ 0x5F5E387C;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-536893321 ^ -1868903086 ^ -121264155 ^ 0x1301A8B1))
            {
               case 0:
                  _loc1_ = _valueObject.size_y;
                  _loc2_ = 0x07C4A5D6 ^ 0x27B77FB7 ^ 0x3AAD69FF ^ -1098917395;
                  break;
               case 1:
                  _loc1_ = _valueObject.size_x;
                  _loc2_ = -742468679 ^ 0x1B53EDB1 ^ 0x71A14213 ^ 0x1DED1668;
                  break;
               case 2:
                  return _loc1_;
               case 3:
                  _loc1_ = 0x09EAB9AC ^ -1500593341 ^ 0x065B4786 ^ -1455473303;
                  if(_92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(_rotation))
                  {
                     _loc2_ = 0x035893A0 ^ -2127967466 ^ -1896145369 ^ -1473565471;
                  }
                  else
                  {
                     _loc2_ = 0x05AD955A ^ -506793890 ^ -1653197849 ^ -575652718;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get height() : int
      {
         var _loc1_:int = 0x3A314EB0 ^ 0x424AB25A ^ -519436244 ^ -1720585018;
         var _loc2_:int = -1913919476 ^ -1160203568 ^ 0x6CCE3D8E ^ 0x68C70818;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x58659D1B ^ 0x0A1BEE8D ^ -1380825264 ^ -856269940))
            {
               case 0:
                  _loc1_ = 0x74C35F6B ^ -1365528279 ^ 0x0C08EF60 ^ -699399902;
                  if(_92a02af1a67b5d02208e6348._d2acc4432f2ea46afe4e718f(_rotation))
                  {
                     _loc2_ = 0x5943FADD ^ -1789919068 ^ 0x3075D3A9 ^ -816036199;
                  }
                  else
                  {
                     _loc2_ = 0x5E44F542 ^ -1510761449 ^ 0x42D48483 ^ -1973845347;
                  }
                  break;
               case 1:
                  _loc1_ = _valueObject.size_x;
                  _loc2_ = 0x485779CE ^ -86769954 ^ 0x41BFA34C ^ -1073657068;
                  break;
               case 2:
                  return _loc1_;
               case 3:
                  _loc1_ = _valueObject.size_y;
                  _loc2_ = -1222722722 ^ 0x7EB5032C ^ -1211825191 ^ 0x4D54D4E3;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function serialize() : Object
      {
         var _loc1_:Object = super.serialize();
         _loc1_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳယჺၔဘძႜၻၫპზႪၺႜტၴ჋Ⴋဠ჏ဵဈშს၅Ⴧၛေ","ဎ၈ၲჰႍშၴႿဧჭႉჱႯ၀မ჋")] = _position.x;
         _loc1_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挼掜捓揚挡挽捙捳掆揱揁挏掄掿捽掛提掖捽捻挢捘掋捘捃掎掷挕","捤挷挟捼捰揉掩挤揸挾掄挵挬挍挈损")] = _position.y;
         _loc1_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揿捍捵掌掗排推揃揓捥探掽捝挣挍捷捬掋揫挆揞措挰挓","捅捺掜掭揖揓捁挴据捑捆捂揫挈挴捋")] = _rotation;
         return _loc1_;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         _type = _2015550cd0ec5b19b791fc93.EIIT_FURNITURE;
         var _loc2_:int = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫损揯捂捋揳揎持挀捿揰捷掩控挄捗揿捓揅援指捳揸掚挊掃捨捱","揂挵持挞揝挫按揆挅掼掋掗挿揥掋捤"));
         var _loc3_:int = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("到劒刬劀劈刕刃刯劔刺劮勡刴勆办剘勪劒勮勳勩剽劯剔刘刡勵劳","勭切刑刀勘勹勪勩励勚勨勑剻刜劐勶"));
         _position = new Point(_loc2_,_loc3_);
         _rotation = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႅႨ჆პေၼၙ႐႐ၘၸჽႏ჉ხၜ၈ႴမႍჱၠၿႤ","အႳ႖်ၒအჸ჆ုႥႠႷჟჍၤႱ"));
      }
   }
}

