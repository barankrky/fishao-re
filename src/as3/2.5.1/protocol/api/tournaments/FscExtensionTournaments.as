package protocol.api.tournaments
{
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import protocol.api.tournaments.canSignUp.RequestTournamentCanSignUp;
   import protocol.api.tournaments.enter.RequestTournamentEnter;
   import protocol.api.tournaments.getRelevant.RequestTournamentGetRelevant;
   import protocol.api.tournaments.memberFinish.RequestTournamentMemberFinish;
   import protocol.api.tournaments.memberReady.RequestTournamentMemberReady;
   import protocol.api.tournaments.sign_up.RequestTournamentSignUp;
   
   public class FscExtensionTournaments extends _d23481b750999df4f0e00416
   {
      
      public function FscExtensionTournaments()
      {
         super();
      }
      
      public function enterToLocationTournament(param1:String, param2:Function) : void
      {
         var _loc3_:RequestTournamentEnter = new RequestTournamentEnter();
         _loc3_.tournament_id = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function signUpOnCurrent(param1:Function) : void
      {
         _connection.send(new RequestTournamentSignUp(),param1);
      }
      
      public function canSignUpOnCurrent(param1:Function) : void
      {
         _connection.send(new RequestTournamentCanSignUp(),param1);
      }
      
      public function sendReadyState(param1:String, param2:Function) : void
      {
         var _loc3_:RequestTournamentMemberReady = new RequestTournamentMemberReady();
         _loc3_.tournament_id = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function getRelevantTournament(param1:Function) : void
      {
         _connection.send(new RequestTournamentGetRelevant(),param1);
      }
      
      public function sendTournamentFinish(param1:String, param2:Function) : void
      {
         var _loc3_:RequestTournamentMemberFinish = new RequestTournamentMemberFinish();
         _loc3_.tournament_id = param1;
         _connection.send(_loc3_,param2);
      }
   }
}

