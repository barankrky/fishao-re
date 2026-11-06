package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
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
   
   public class ProfileFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function ProfileFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getUserMailActivationInfo(param1:Function = null) : void
      {
         var _loc2_:GetUserActivationInfoReq = new GetUserActivationInfoReq();
         _connection.send(_loc2_,param1);
      }
      
      public function getProfileUserInfo(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileUserInfoReq = new GetProfileUserInfoReq(param1,"0");
         _connection.send(_loc3_,param2);
      }
      
      public function getProfileFishesInfo(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileFishesReq = new GetProfileFishesReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function getProfilePrizesInfo(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfilePrizesReq = new GetProfilePrizesReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function getProfileInventoryInfo(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileInventoryReq = new GetProfileInventoryReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function getProfileFriendsInfo(param1:String, param2:Function = null) : void
      {
         var _loc3_:GetProfileFriendsReq = new GetProfileFriendsReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function getProfileRankingInfo(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Function) : void
      {
         var _loc7_:RequestProfileRankings = new RequestProfileRankings();
         _loc7_.login = param1;
         _loc7_.ranking_type = param2;
         _loc7_.ranking_subtype = param3;
         _loc7_.filter = param4;
         _loc7_.page = param5;
         _connection.send(_loc7_,param6);
      }
      
      public function sendProfileReportInfo(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:ProfileReportReq = new ProfileReportReq(param1,param2,param3);
         _connection.send(_loc5_,param4);
      }
      
      public function getGameSettings(param1:Object, param2:Function = null) : void
      {
         var _loc3_:UpdateSettingsReq = new UpdateSettingsReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function getGameSoundSettings(param1:Object, param2:Function = null) : void
      {
         var _loc3_:UpdateSoundSettingsReq = new UpdateSoundSettingsReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function sendActivationEmail(param1:String, param2:Function) : void
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
      
      public function removeFromFriends(param1:String, param2:Function) : void
      {
         var _loc3_:RequestFriendsCancel = new RequestFriendsCancel();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function sendAcceptAsFriend(param1:String) : void
      {
         var _loc2_:RequestFriendsAccept = new RequestFriendsAccept();
         _loc2_.login = param1;
         _connection.send(_loc2_,null);
      }
      
      public function sendDenyAsFriend(param1:String) : void
      {
         var _loc2_:RequestFriendsDeny = new RequestFriendsDeny();
         _loc2_.login = param1;
         _connection.send(_loc2_,null);
      }
      
      public function sendDenyAndBlockAsFriend(param1:String) : void
      {
         var _loc2_:RequestFriendsBlock = new RequestFriendsBlock();
         _loc2_.login = param1;
         _connection.send(_loc2_,null);
      }
   }
}

