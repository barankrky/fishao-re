package com.ax3.jss.ext.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.api.friends.accept.RequestFriendsAccept;
   import protocol.api.friends.block.RequestFriendsBlock;
   import protocol.api.friends.cancel.RequestFriendsCancel;
   import protocol.api.friends.deny.RequestFriendsDeny;
   import protocol.api.friends.start.RequestFriendsStart;
   import protocol.api.profile.rankings.RequestProfileRankings;
   import protocol.cr.UpdateSettingsReq;
   import protocol.cr.UpdateSoundSettingsReq;
   import protocol.cr.activation.GetUserActivationInfoReq;
   import protocol.cr.activation.SendActivationMailReq;
   import protocol.cr.profile.GetProfileFishesReq;
   import protocol.cr.profile.GetProfileFriendsReq;
   import protocol.cr.profile.GetProfileInventoryReq;
   import protocol.cr.profile.GetProfilePrizesReq;
   import protocol.cr.profile.GetProfileUserInfoReq;
   import protocol.cr.profile.ProfileReportReq;
   
   public class _ed57147569c64063bdc5fdc4 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _ed57147569c64063bdc5fdc4()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _4f7c98eab2f63104298aec2b(param1:Function = null) : void
      {
         var _loc2_:GetUserActivationInfoReq = new GetUserActivationInfoReq();
         _connection.send(_loc2_,param1);
      }
      
      public function _ef237745072f3d2bb9343194(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileUserInfoReq = new GetProfileUserInfoReq(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勹効勾刲剂刜刎刃劢刬","勁勉功劇剞劒勫刘勫刦剾励剪刓勻勫"));
         _connection.send(_loc3_,param2);
      }
      
      public function _4f312005dd2c42491c7601d0(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileFishesReq = new GetProfileFishesReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _1de06135b7e6343aeec19dc3(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfilePrizesReq = new GetProfilePrizesReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _d6dc6652dfcd292e55a1d008(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileInventoryReq = new GetProfileInventoryReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _d78ec813ab093e3df7589ea2(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileFriendsReq = new GetProfileFriendsReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _d8169f021e18b3ae3042d396(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Function) : void
      {
         var _loc7_:RequestProfileRankings = new RequestProfileRankings();
         _loc7_.login = param1;
         _loc7_.ranking_type = param2;
         _loc7_.ranking_subtype = param3;
         _loc7_.filter = param4;
         _loc7_.page = param5;
         _connection.send(_loc7_,param6);
      }
      
      public function _510d24215dfa5a10cf802f3f(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:ProfileReportReq = new ProfileReportReq(param1,param2,param3);
         _connection.send(_loc5_,param4);
      }
      
      public function _ced4a1498fa705f4d91b8c07(param1:Object, param2:Function = null) : void
      {
         var _loc3_:UpdateSettingsReq = new UpdateSettingsReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _ee15b91f3891c6dd45c0bbb0(param1:Object, param2:Function = null) : void
      {
         var _loc3_:UpdateSoundSettingsReq = new UpdateSoundSettingsReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _5032c23458208213494a5e43(param1:String, param2:Function) : void
      {
         var _loc3_:SendActivationMailReq = new SendActivationMailReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function addAsFriend(param1:String, param2:Function) : void
      {
         var _loc3_:RequestFriendsStart = new RequestFriendsStart();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function _46a604d2efeef8efc5da45f2(param1:String, param2:Function) : void
      {
         var _loc3_:RequestFriendsCancel = new RequestFriendsCancel();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function _6ab6e47b0230ff268ca13f7d(param1:String) : void
      {
         var _loc2_:RequestFriendsAccept = new RequestFriendsAccept();
         _loc2_.login = param1;
         _connection.send(_loc2_,null);
      }
      
      public function _553dc6c448b85a552baaf270(param1:String) : void
      {
         var _loc2_:RequestFriendsDeny = new RequestFriendsDeny();
         _loc2_.login = param1;
         _connection.send(_loc2_,null);
      }
      
      public function _2ae0e8aac207ff33833db409(param1:String) : void
      {
         var _loc2_:RequestFriendsBlock = new RequestFriendsBlock();
         _loc2_.login = param1;
         _connection.send(_loc2_,null);
      }
   }
}

