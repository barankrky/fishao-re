package com.ax3.fishao.view.dialogs.tournaments
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.tournaments.controllers._5cf8b5babfad8020fdddfe03;
   import com.ax3.fishao.view.dialogs.tournaments.models._87c5db8b779e4199260f7152;
   
   public class _0f0e8f7ec0bd7873425d866f extends _59d9b16cb66101bd56ef6297
   {
      
      private var _0f2e6c63eae0e8b3c50419f9:_5cf8b5babfad8020fdddfe03;
      
      public function _0f0e8f7ec0bd7873425d866f()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_START;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._0f2e6c63eae0e8b3c50419f9 = new _5cf8b5babfad8020fdddfe03(_asset);
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED === _loc2_ ? -1486155586 ^ -547505303 ^ 0x765F3977 ^ 0x0E6992A0 : 0x10A8F3FB ^ 0x0C460F13 ^ 0x3F73910A ^ 0x239D6DE3)
         {
            case 0:
               if(this._0f2e6c63eae0e8b3c50419f9 == null)
               {
                  return;
               }
               this._0f2e6c63eae0e8b3c50419f9.update(param1);
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措揅挏掬揵掯挝捁掷挍揟排捙揃掶揹挃探揱挱捓揓捃揀揸挖掟捫挎掆掩挍挍挲捙掻探掹捲掣挚揺揻揰揌揷挤捰揚挒揵掷揣挭揳捘挄揩掷插捛揩揎掑挱掺揋接捾挕揂揻捫捩捧掯挮採挽捡掋挴揝掺捯换挐捁掩揘揃捛採揽掍捴捖掮据掸挣挢揶掘掮揥揹挱捽揉挛掶捊挞握控捑推揿捜捍掣揯揱揙捧捂捤捾捊指捌掹捼据捄捈捚捉揽揻挮揮授","挰挪揎损揔掞揷揵挄捸採捹揸挑捰掘") + param1);
         }
      }
      
      override public function show() : void
      {
         var _loc1_:int = -2008555144 ^ -1347335714 ^ 0x125F4CFC ^ -1651085009;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1475408257 ^ 0x33AC23F8 ^ -1202287884 ^ -1949683196))
            {
               case 0:
                  this.close();
                  _loc1_ = 0x570B6F2B ^ 0x2E23B36E ^ 0x630BDB04 ^ -1306750409;
                  break;
               case 1:
                  super.show();
                  return;
               case 2:
                  if(GameSwf.instance.managerTournaments.tournamentCurrent.state != _87c5db8b779e4199260f7152.ETS_SIGNING)
                  {
                     _loc1_ = 0x09B7A85C ^ 0x1EA63FD4 ^ -800754434 ^ 0x6F6B7601;
                  }
                  else
                  {
                     _loc1_ = -751164823 ^ -1185458803 ^ 0x69A1A2B3 ^ -1410121695;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function close() : void
      {
         this._0f2e6c63eae0e8b3c50419f9._90eac9ca552fe54c2ca0299f();
         this._0f2e6c63eae0e8b3c50419f9 = null;
         super.close();
      }
   }
}

