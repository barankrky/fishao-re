package protocol.api.announcements.init
{
   import com.ax3.fishao.core._da2facf75d08e7f9226a6df7;
   import com.ax3.fishao.debug.Debug;
   
   public class AnnouncementInfo implements _da2facf75d08e7f9226a6df7
   {
      
      private var _title:String;
      
      private var _description:String;
      
      private var _urlImage:String;
      
      private var _timeDiff:Number;
      
      public function AnnouncementInfo()
      {
         super();
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get urlImage() : String
      {
         return this._urlImage;
      }
      
      public function get timeDiff() : Number
      {
         return this._timeDiff;
      }
      
      public function serialize() : Object
      {
         Debug.assert(false,"Not implemented");
         return null;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._title = Debug.assertProperty(param1,"title");
         this._description = Debug.assertProperty(param1,"description");
         this._urlImage = Debug.assertProperty(param1,"url_image");
         this._timeDiff = Debug.assertProperty(param1,"time_diff");
      }
   }
}

