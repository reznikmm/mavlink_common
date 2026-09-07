-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The state of the navigation and position controller.

pragma Ada_2022;

package MAVLink.V1.Common.Nav_Controller_Outputs is

   pragma Pure;

   Nav_Controller_Output_Len : constant Interfaces.Unsigned_8 := 26;

   type Nav_Controller_Output is record
      Nav_Roll       : Raw_Float;
      --  Units: [deg]
      --  Current desired roll
      Nav_Pitch      : Raw_Float;
      --  Units: [deg]
      --  Current desired pitch
      Nav_Bearing    : Interfaces.Integer_16;
      --  Units: [deg]
      --  Current desired heading
      Target_Bearing : Interfaces.Integer_16;
      --  Units: [deg]
      --  Bearing to current waypoint/target
      Wp_Dist        : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Distance to active waypoint
      Alt_Error      : Raw_Float;
      --  Units: [m]
      --  Current altitude error
      Aspd_Error     : Raw_Float;
      --  Units: [m/s]
      --  Current airspeed error
      Xtrack_Error   : Raw_Float;
      --  Units: [m]
      --  Current crosstrack error on x-y plane
   end record;

   for Nav_Controller_Output use record
      Nav_Roll       at 0  range 0 .. 31;
      Nav_Pitch      at 4  range 0 .. 31;
      Alt_Error      at 8  range 0 .. 31;
      Aspd_Error     at 12 range 0 .. 31;
      Xtrack_Error   at 16 range 0 .. 31;
      Nav_Bearing    at 20 range 0 .. 15;
      Target_Bearing at 22 range 0 .. 15;
      Wp_Dist        at 24 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Nav_Controller_Output;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Nav_Controller_Output;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Nav_Controller_Output;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Nav_Controller_Output;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Nav_Controller_Outputs;
