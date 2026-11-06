package com.ax3.fishao.model.types
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.empty;
   
   public class _3e150da9e23ba0916ccbf8e9
   {
      
      private static var _c6b862e162cd4030c8be82b7:Vector.<_3e150da9e23ba0916ccbf8e9> = new Vector.<_3e150da9e23ba0916ccbf8e9>();
      
      public static const NORMAL:_3e150da9e23ba0916ccbf8e9 = new _3e150da9e23ba0916ccbf8e9(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဵზႋံႥဦၾ჻ႸဂႧ႕ႌႩဉၥღႯဥႽ","Ⴃၜჾმწჸუၿ၇ဧტႋၧბၲჺ"),0x39061C50 ^ 0x38D527CD ^ 0x6793D18A ^ 0x66705917,false,false);
      
      public static const WARNING:_3e150da9e23ba0916ccbf8e9 = new _3e150da9e23ba0916ccbf8e9(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描揳捖捧揉据掾捑揨挃捺捚挚掳挙捎掍掌挖揌接揨","揪排揆揄挅排捰揉捃掩挖挤揈掩掬捋"),-884630504 ^ 0x40FA9213 ^ -1545253738 ^ 0x282D11AF,false,true);
      
      public static const COMMUNICATION_BAN:_3e150da9e23ba0916ccbf8e9 = new _3e150da9e23ba0916ccbf8e9(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劻剼剁剭剼劔勇勭勮劧勴刨券刍剞劘則勮勀劦刴剜切势刭剉删刣割刔劶劎勃劕务勴剕勺剨剈","剙劐劽刽刹劯劓勷刧剝刢刬勬刢剱勧"),0x66EEA5E7 ^ -435562948 ^ 0x31C8498F ^ -1311709100,true,true);
      
      public static const FULL_BAN:_3e150da9e23ba0916ccbf8e9 = new _3e150da9e23ba0916ccbf8e9(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("အႥჳာကၫ჈ၳႄჍဌႻႝ၇ჺ႐ၪჼႎၥၠၥ","ႸჹႠყၗၷၾႮႋ၍ჵၻဧჯၽၫ"),0x35AA909F ^ 0x61A02739 ^ -1457302961 ^ -36243479,true,true);
      
      public static const DISMISS_REPORT:_3e150da9e23ba0916ccbf8e9 = new _3e150da9e23ba0916ccbf8e9(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒဣ၉ရფ჏၉ჼოႱဨဵზႃၱბჲဦဈဪဢႮ။ဗယၥნထႛჼႇၴႼႇ","ၐၬဒူၵბႭၘငႠၣ჆Ⴣထშဨ"),-487246997 ^ 0x03C844C0 ^ 0x67AC4CE2 ^ -2031661761,false,true);
      
      public var name:String;
      
      public var color:uint;
      
      public var hasTime:Boolean;
      
      public var id:uint;
      
      public var selectable:Boolean;
      
      public function _3e150da9e23ba0916ccbf8e9(param1:String, param2:uint, param3:Boolean, param4:Boolean)
      {
         super();
         this.name = param1;
         this.color = param2;
         this.hasTime = param3;
         this.selectable = param4;
         this.id = _c6b862e162cd4030c8be82b7.length;
         _c6b862e162cd4030c8be82b7.push(this);
      }
      
      public static function getAll() : Vector.<_3e150da9e23ba0916ccbf8e9>
      {
         return _c6b862e162cd4030c8be82b7;
      }
      
      public static function _4f0abf31624ad8d39f1e1bfd(param1:String) : _3e150da9e23ba0916ccbf8e9
      {
         var _loc2_:_3e150da9e23ba0916ccbf8e9 = null;
         if(empty(param1))
         {
            return NORMAL;
         }
         for each(_loc2_ in _c6b862e162cd4030c8be82b7)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function indexOf(param1:_3e150da9e23ba0916ccbf8e9) : int
      {
         return _c6b862e162cd4030c8be82b7.indexOf(param1);
      }
   }
}

