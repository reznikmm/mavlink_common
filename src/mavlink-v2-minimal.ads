-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Minimal is

   pragma Pure;

   Heartbeat_Id        : constant Msg_Id := 0;
   Protocol_Version_Id : constant Msg_Id := 300;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       0   .. 0   |
       300 .. 300;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 0   => "Heartbeat",
         when 300 => "Protocol_Version");

end MAVLink.V2.Minimal;
