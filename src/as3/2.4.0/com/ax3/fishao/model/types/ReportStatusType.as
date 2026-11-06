package com.ax3.fishao.model.types
{
   public class ReportStatusType
   {
      
      public static const OPEN:ReportStatusType = new ReportStatusType("OPEN",697357);
      
      public static const PROCESSING:ReportStatusType = new ReportStatusType("PROCESSING",7763574);
      
      public static const CLOSED:ReportStatusType = new ReportStatusType("CLOSED",16711680);
      
      public var name:String;
      
      public var color:uint;
      
      public function ReportStatusType(param1:String, param2:uint)
      {
         super();
         this.name = param1;
         this.color = param2;
      }
   }
}

