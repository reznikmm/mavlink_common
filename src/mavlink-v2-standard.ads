-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Standard is

   pragma Pure;

   Heartbeat_Id           : constant Msg_Id := 0;
   Global_Position_Int_Id : constant Msg_Id := 33;
   Autopilot_Version_Id   : constant Msg_Id := 148;
   Protocol_Version_Id    : constant Msg_Id := 300;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       0   .. 0   |
       33  .. 33  |
       148 .. 148 |
       300 .. 300;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 0   => "Heartbeat",
         when 33  => "Global_Position_Int",
         when 148 => "Autopilot_Version",
         when 300 => "Protocol_Version");

end MAVLink.V2.Standard;
