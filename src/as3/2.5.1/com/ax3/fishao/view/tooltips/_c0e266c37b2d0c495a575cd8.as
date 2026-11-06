package com.ax3.fishao.view.tooltips
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.interfaces._2cf2c36ec9c55df2249a4e27;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _c0e266c37b2d0c495a575cd8 extends _6e60de8b9e3e23f2004f5256 implements _2cf2c36ec9c55df2249a4e27
   {
      
      public function _c0e266c37b2d0c495a575cd8()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
         _title.cacheAsBitmap = true;
         _playersCount.cacheAsBitmap = true;
         _asset.cacheAsBitmap = true;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:int = 0x6C3873E3 ^ -755157533 ^ 0x68365F89 ^ -1234747750;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6E963C56 ^ 0x3032385B ^ -1742089560 ^ -1508249162))
            {
               case 0:
                  _title.text = param1.toUpperCase();
                  if(_playersCount.width < _title.width - (-361210320 ^ -1147592688 ^ 0x3BFEB613 ^ 0x6A1FC83C))
                  {
                     _loc2_ = 0x10577C08 ^ 0x1E4F43DC ^ -516870151 ^ -1883424964;
                  }
                  else
                  {
                     _loc2_ = 0x1D342341 ^ 0x5E32D4DE ^ -1400512174 ^ -1894305313;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _playersCount.width = _title.width - (0x0BB0CB8F ^ 0x35F38225 ^ -1900247016 ^ -1325416003);
                  _playersCount.x = -_playersCount.width * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勵剂勴刌勸刨労剿刚剝剿动励勸刷剚剧刹劔剔勇剱剺劯","刻券剝剾剀刣劦劥剙劔动劁刢割勿剫");
                  _loc2_ = -1093569975 ^ -863101764 ^ -757837107 ^ -1071703254;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set description(param1:String) : void
      {
         _playersCount.text = _c2ad9d37d7be0097d6d2e977.template(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挋捺捰揳掕挝握捬挆挼捸挷掄掜掻挽挼挃揃揖捒捷掰掹挏探揪挗捼揾挭捔掴挩挑揢捂挘掯掖掐掽捺挓捎捦捁提揍捾","挖换挾揲捤捴挜揭挋挬掍揬掄揲控授"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၱႀေႻჲၚဴლႛၙჵဧစဩკဲၑფ","႓ၰჾဗၲყႋဉဢ႒႖რၓႲႡၿ")):param1});
      }
   }
}

