package com.ax3.fishao.utils
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.junkbyte.console.Cc;
   import flash.system.Capabilities;
   
   public class _9ff64702cc7447885dafed5f
   {
      
      public function _9ff64702cc7447885dafed5f()
      {
         super();
      }
      
      public static function _a839c99929ee89834474d281() : Number
      {
         var result:Number = NaN;
         var worlds:Array = null;
         var versionParts:Array = null;
         var versionStr:String = null;
         var str:String = Capabilities.version;
         try
         {
            worlds = str.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃势勅刧劮剎刕刈劆剒","动劊剅勢刊刬利勊勒加剦剆勸勌勞剿"));
            versionParts = worlds[worlds.length - 1].split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧剥剎剏劽劲刉刻剆剸","劻前剖勽剟劝労勳刄刁劶剦勷剄剢勲"));
            versionStr = versionParts[0x47CCCDBB ^ 0x6E132988 ^ 0x727B716A ^ 0x5BA49559] + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("副剡勰剘劖劃刂剸割刣","刺勅制刵剧劯劄勍勍劸勗割剼勒剖劇") + versionParts[0x36C7D062 ^ 0x059E111D ^ 0x69FC3995 ^ 0x5AA5F8EB];
            result = parseFloat(versionStr);
         }
         catch(err:Error)
         {
            Cc.error(err);
            Cc.error(err.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5();
            result = 0x32D3F1DE ^ 0x1912FFF1 ^ 0x2244FF5C ^ 0x0985F173;
         }
         return result;
      }
   }
}

