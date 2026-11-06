package com.ax3.fishao.model.info
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.empty;
   
   public class _0760ce29bdab6fd5166927ab extends _c4d45de32d45523b37ad0cdf
   {
      
      public static const BAMBOO_ID:int = 0x06F13050 ^ -555480655 ^ 0x627298DF ^ -1167613633;
      
      public var infoId:int;
      
      public var color:String;
      
      public function _0760ce29bdab6fd5166927ab(param1:Object)
      {
         super(param1);
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刬剘剙勥劸刉勜剅剞労剶劖刿務劫勑剸劾劲勡剴刺刽削刳刲剚剦勋劈劚劕刂劂剞刜","剶剾勆勺判刦刿分勌劇勩务剂劅別勠")))
         {
            this.infoId = param1.resourceInfoId;
         }
         else if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ဢႆဳဠႺႛယၿჂအპჩ႔ჹწႮ჉ဨႠჂဵရန၈၆၎ჵ","ၠၚ္ဴတჸႦႹფၡၒႿဳဨကჾ")))
         {
            this.infoId = param1.resourceId;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勮刅勔剠利勺刮勼劆別券刂勅剤勠劝刺划","剏勺剳劌劍剧劵剢刄勬刼勬刬勛勠剣")) && !empty(param1.color))
         {
            this.color = param1.color;
         }
      }
   }
}

