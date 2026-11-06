package com.ax3.fishao.locations.lucky_raft
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import protocol.sr.UpdateResp;
   
   public class _d4341637eab7e600e78152a2 extends _4039c287ddb4ef46ab65ab0e
   {
      
      public function _d4341637eab7e600e78152a2(param1:int)
      {
         super(param1);
      }
      
      override public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super._74c869ae3d29b2df7f677f8a(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               var _loc6_:String = _loc3_;
               switch(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剂劾劣创勪刡勄刉勝刏剑副刲勘勇剰剻劁劐刬勈勐勛刋刪剻力創剕勺刹刾剽刵剒勪劚劍勈勣","剾劝劘努勷刦刉劎剛刘劃勖劗刮刍勒") === _loc6_ ? -2042826881 ^ -402957974 ^ 0x0278B42B ^ 0x63BF023E : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捷捩揯揵掇掛捈捛揁掙捸掵挐捭换挝揖接掺探捝揎掷掑捺挮捍揵挊挡挟掸揸捂捊揺揹提揕捩挜掰持捣挦捕挳挡挈挥掍捗挦掓捸捠挹捹掦挎","握挓挆掖掃捛掺捥挾揈揝掽揠揦提捿") === _loc6_ ? 0x4C2976EC ^ 0x287A15C1 ^ -1498808968 ^ -1023762860 : 0x3684FE71 ^ -420026099 ^ 0x2C9F1646 ^ -51576520))
               {
                  case 0:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.UPDATE_BOARD_FISH,_loc2_));
                     break;
                  case 1:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.FORCE_MOVE_TO_LUCKY_SAILOR,_loc2_));
               }
            }
         }
      }
   }
}

