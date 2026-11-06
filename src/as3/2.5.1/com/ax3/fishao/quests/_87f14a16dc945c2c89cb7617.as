package com.ax3.fishao.quests
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   
   public class _87f14a16dc945c2c89cb7617
   {
      
      public function _87f14a16dc945c2c89cb7617()
      {
         super();
      }
      
      public static function _ff24e1caee72749574ec098d(param1:String, param2:Object) : _ef35c5b7acd3132a397260e8
      {
         var _loc3_:_ef35c5b7acd3132a397260e8 = null;
         switch(param1)
         {
            case _9f9b0437732a732f27c8da80.EQT_GAME_END:
               §§push(-8863962 ^ 0x65F4ADE9 ^ -1591267366 ^ 0x3BAB3D15);
               break;
            case _9f9b0437732a732f27c8da80.EQT_PIRATE_CAVE:
               §§push(-185387776 ^ -205014038 ^ 0x35134F01 ^ 0x3227C1EA);
               break;
            default:
               §§push(-39448325 ^ -1838082150 ^ 0x0A422B68 ^ 0x65952C0B);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = new _a15fa3f8a5c23be696811a15();
               break;
            case 1:
               _loc3_ = new _6010cdd97b2c9adb7381e433();
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振揇挚挢掂挤採揎揅掊揳挤挎捿掁捿挗捽捉捉挽揀挑揙揳捎挋挤挑掍握掣挈挕捬挃捕掱掱揉揇揥捯捨挽掶捘挈授掾掦揺捏排挕揇採掠揆捃掗掾捋揁掗挄揖捺揖捼掹掤挾捫揃挮揜描捬換揪捡揃捙掃捀揅掻","揶捉捣挶挿揙揝接揶挴揲掝挂挏挻按") + param1);
         }
         if(_loc3_ != null)
         {
            _loc3_.deserialize(param2);
         }
         return _loc3_;
      }
   }
}

